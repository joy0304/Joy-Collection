## Using Sleep Analysis in Healthkit with Swift

>作者：Martin_Joy，[原文链接](http://www.appcoda.com/sleep-analysis-healthkit/)，原文日期：2016-06-18

当今，睡眠革命是一种新潮，用户们比以往更好奇他们的睡眠时间，还想收集一段时期内的数据，用以分析睡眠趋势。科技的发展，尤其是硬件和手机的发展，给这个看似持续热议的学科带来了新的曙光。



`Apple` 提供了一种很酷的方式，可以安全地访问用户的健康信息，并把它们存储在内置的健康应用中。有了`HealthKit`框架，你不仅可以去搭建一个健身应用，还可以去访问睡眠分析数据。

在这篇教程中，我将对`HealthKit`框架有一个快速的介绍，并向你展示如何去搭建一个具有睡眠分析功能的简单应用。


### 简介

`HealthKit `框架提供一个叫`HealthKit store`的加密数据库用以存储数据
。你可以通过使用`HKHealthStore`类去访问这个数据库。`iPhone `和` Apple Watch `都有他们自己的`HealthKit store`。用户健康状况的数据会在`Apple Watch` 和`iPhone`之间同步，然而，为了节省空间，旧数据会被周期性地从`Apple Watch` 中清除。`HealthKit` 和 健康类 `APP` 不支持在 `ipad` 上使用。

如果你想基于健康数据去创建一个`iOS` 或者 `watchOS app` ，`HealthKit` 是一个可以帮到忙的强大工具。它可以管理多渠道的数据，并且根据用户的偏好自动地合并不同来源的数据。这些健康类`App` 可以访问各个来源的原生数据，同时合并数据。这些数据不仅可以表明身体健康指标，健身和营养状况，还可以用来分析睡眠状态。

这篇文章的剩下内容，我将向你展示如何在`iOS`系统上使用`HealthKit`框架去存储和访问睡眠分析的数据。同样这些方法在`watchOS`上也是有效。请注意这篇教程的编程环境是 `Swift 2.0` 和 `Xcode 7`。所以学习这篇教程的时候，确定自己使用的是`Xcode 7` 或其更新的版本。

在开始之前，下载启动项目并且解压它。我已经为你创建了具有基本功能的用户界面，当你运行这个启动项目的时候，你将看到一个计时器，它能展示你按下按钮后经过的时间。

### 使用HealthKit框架

我们的应用是想要取回在计时期间的睡眠分析数据，并保存它。为了使用 `HealthKit` ，
你需要获取使用`HealthKit`的许可。在你的工程中，选中 `SleepAnalysis`，然后点击` Targets` 下方的 `SleepAnalysis`。接着，选择`Capabilities`，并且将`HealthKit`移至`On`状态

 
![](http://i4.piimg.com/567571/d26d8161787ac342.jpg)


接下来，你将需要在`ViewController`类中使用下面代码去创建一个`HKHealthStore`实例

	let healthStore = HKHealthStore()


稍后我们将使用`HKHealthStore`实例去访问`HealthKit Store`。

正如上文提到的那样，`HealthKit`给予用户控制自身健康数据的权限。所以你首先不得不去请求用户的许可，这样你才可以访问（读／写）用户的睡眠分析数据。想要访问用户数据，前提是要导入内置的`HealthKit` 框架，并更新在`viewDidLoad`中的代码如下：

	override func viewDidLoad() {
	    super.viewDidLoad()
	    let typestoRead = Set([
	        HKObjectType.categoryTypeForIdentifier(HKCategoryTypeIdentifierSleepAnalysis)!
	        ])
	    let typestoShare = Set([
	        HKObjectType.categoryTypeForIdentifier(HKCategoryTypeIdentifierSleepAnalysis)!
	        ])
	    self.healthStore.requestAuthorizationToShareTypes(typestoShare, readTypes: typestoRead) { (success, error) -> Void in
	        if success == false {
	            NSLog(" Display not allowed")
	        }
	    }
	}


以上代码将提示用户去同意或拒绝你的权限请求。在这个闭包中，你可以处理成功或失败状态的回调事件，并且可以获得请求的结果。用户也不一定会同意你`app`所有的权限请求，所以你必须在`app`中合理地处理错误。

但是出于测试的目的，你必须选择“允许”选项来允许应用程序访问你的设备上的健康数据。

![](http://i4.piimg.com/567571/e744ae40ae24918b.jpg)

### 写入Sleep Analysis数据

首先，我们如何能够拿到睡眠分析数据呢？通过`Apple`的文档，可以知道每个睡眠分析数据样本都仅有一个数值。为了表示卧床和睡眠状态，`HealthKit`使用两个或者更多含有重叠时间的样本加以分析。通过比较这些样本的开始和结束时间，`app` 可以得出一些二次统计的数据。

* 用户花费了多少时间才进入睡眠
* 用户在床上睡眠时间占全部床上时间的百分比
* 用户在床上醒来的次数
* 用户卧床和睡眠的时间的总时间

![](http://i2.piimg.com/567571/f66f3a9aae3221e2.jpg)

简而言之，你按照下面的方法去保存睡眠分析数据到`HealthKit Store`

* 我们需要定义两个`NSData`对象去放对应的开始和结束时间 
* 我们需要使用`HKCategoryTypeIdentifierSleepAnalysis`去创建一个`HKObjectType`实例
* 我们需要去创建一个`HKCategorySample`类型的实例，你通常会使用这个实例去记录睡眠数据。单独的样本代表这个用户卧床或睡眠时的时长。所以我们将创建包含重叠时间的卧床状态和睡眠状态的样本。
* 最后，我们将使用`HKHealthStore`的`saveObject`方法去写入数据。


>笔者注：对于类别样本的类型，可以看看HealthKit官方文档中的[HealthKit常数参考](https://developer.apple.com/library/ios/documentation/HealthKit/Reference/HealthKit_Constants/index.html#//apple_ref/doc/uid/TP40014710)。

这里提供关于保存卧床和睡眠分析数据的代码片段，来帮助你将上述描述转换为`Swift`代码。请把下列方法插入到`ViewController`类中。

	
	func saveSleepAnalysis() {
	    
	    // alarmTime and endTime are NSDate objects
	    if let sleepType = HKObjectType.categoryTypeForIdentifier(HKCategoryTypeIdentifierSleepAnalysis) {
	        
	        // we create our new object we want to push in Health app
	        let object = HKCategorySample(type:sleepType, value: HKCategoryValueSleepAnalysis.InBed.rawValue, startDate: self.alarmTime, endDate: self.endTime)
	        
	        // at the end, we save it
	        healthStore.saveObject(object, withCompletion: { (success, error) -> Void in
	            
	            if error != nil {
	                // something happened
	                return
	            }
	            
	            if success {
	                print("My new data was saved in HealthKit")
	                
	            } else {
	                // something happened again
	            }
	            
	        })
	        
	        
	        let object2 = HKCategorySample(type:sleepType, value: HKCategoryValueSleepAnalysis.Asleep.rawValue, startDate: self.alarmTime, endDate: self.endTime)
	        
	        healthStore.saveObject(object2, withCompletion: { (success, error) -> Void in
	            if error != nil {
	                // something happened
	                return
	            }
	            
	            if success {
	                print("My new data (2) was saved in HealthKit")
	            } else {
	                // something happened again
	            }
	            
	        })
	        
	    }
	    
	}



当我们想去保存睡眠数据到`HealthKit`中去的时候，就可以调用这个方法。

### 读取睡眠分析数据

如果要去读取睡眠分析数据，我们将需要创建一个查询方法。你需要创建一个`HKCategoryTypeIdentifierSleepAnalysis`类型的`HKObjectType`实例。你也可能想要使用一个断言，通过`startDate`和`endDate`这两个`NSData`对象对应的时间范围来过滤取回的数据。你同时也需要去创建一个`sortDescriptor`对象，来对样本数据进行排序，从而获得你想要的结果。


查询睡眠数据的代码大致如下：

	func retrieveSleepAnalysis() {
	    
	    // first, we define the object type we want
	    if let sleepType = HKObjectType.categoryTypeForIdentifier(HKCategoryTypeIdentifierSleepAnalysis) {
	        
	        // Use a sortDescriptor to get the recent data first
	        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
	        
	        // we create our query with a block completion to execute
	        let query = HKSampleQuery(sampleType: sleepType, predicate: nil, limit: 30, sortDescriptors: [sortDescriptor]) { (query, tmpResult, error) -> Void in
	            
	            if error != nil {
	                
	                // something happened
	                return
	                
	            }
	            
	            if let result = tmpResult {
	                
	                // do something with my data
	                for item in result {
	                    if let sample = item as? HKCategorySample {
	                        let value = (sample.value == HKCategoryValueSleepAnalysis.InBed.rawValue) ? "InBed" : "Asleep"
	                        print("Healthkit sleep: \(sample.startDate) \(sample.endDate) - value: \(value)")
	                    }
	                }
	            }
	        }
	        
	        // finally, we execute our query
	        healthStore.executeQuery(query)
	    }
	}


以上的代码先查询到所有的睡眠分析的数据，并按照降序排列。每个查询结果将被打印出来，打印结果包含开始时间、结束时间、以及所对应的类别（卧床或睡眠）。我已经设置了限制，取回最近的三十条记录样本。你可以使用自己的断言方法自定义开始时间和结束时间来限制查询的区间。


### 应用测试

对于 `demo` 程序，我已经使用了一个`NSTimer`去显示点击开始按钮后流逝的时间。`NSDate`对象被创建用来保存开始和结束之间的睡眠分析数据。在`stop`方法中，你可以调用`saveSleepAnalysis（）`方法和`retrieveSleepAnalysis（）`方法去保存和获取睡眠数据。

	@IBAction func stop(sender: AnyObject) {
	    endTime = NSDate()
	    saveSleepAnalysis()
	    retrieveSleepAnalysis()
	    timer.invalidate()
	}



然而在你个人的应用中，你或许会通过改变对应的`NSDate`对象，从而选择相应的开始时间和多个（不同的）结束时间来记录个人卧床和睡眠状态的数据。


当你完成调整后，你可以运行这个`demo`并开始计时，让他运行几分钟，然后点击`stop`按钮。之后，打开这款健康应用，你将发现那里的睡眠数据。


![](http://i2.piimg.com/567571/c5df2960ba2d8f39.jpg)


### 对于健康类app的一些建议

`HealthKit` 为给开发者提供了一个平台，可以方便地共享和访问用户数据，同时也避免了访问数据时出现的重复性和差异性问题。苹果对于使用`HealthKit`的`app`的审核是非常严格，倘若你申请读写权限，但是你没有明确的提示，可能会遭到`appstore`的拒绝。

倘若你的app存储伪数据或不准确的数据，也将会遭到`appstore`的拒绝。这意味着，你不能使用类似于本教程中的睡眠分析数据，你需要通过准确的算法去计算与健康有关的数据。或许你尝试使用设备中内置传感器的统计数据，加以分析，得出分析数据，以避免出现错误或不准确数据。

对于完成的工程，你可以从这里获取到代码。



