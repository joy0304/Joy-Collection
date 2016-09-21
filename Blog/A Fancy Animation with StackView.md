## A Fancy Animation with StackView



>作者：Martin_Joy，[原文链接](https://www.natashatherobot.com/button-animation-stackview/)，原文日期：2016年7月24日

上周，我作为嘉宾参加了[iOSDevCampDC](http://iosdevcampdc.com/)，在那，很高兴听到了[@atomicbird](https://twitter.com/atomicbird) 对`stackViews`的精彩的演讲。我了解`StackViews`的基本原理，但是我不知道，通过它们可以如此简单地制作出令人印象深刻的动画。

这里是一个`@atomicbird`演示过的很酷的动画例子，我在这篇博客中模仿了这种效果。在这个有趣的App中有一个用户设置的按钮，用户可以通过它来选择一个表情符号来表示他们当前的状态。

![](http://upload-images.jianshu.io/upload_images/852671-f9eb038d3f176cb2.gif?imageMogr2/auto-orient/strip)

### The Setup
只需要在你的`View`中基于约束添加一个`StackView`，然后添加所需要的按钮去制作这个可爱的表情菜单，就可以完成基础设置。

![](https://www.natashatherobot.com/wp-content/uploads/Main_storyboard_%E2%80%94_Edited_and_MyPlayground_playground-1024x444.png)

`stackviews`是非常简单而且容易上手的，所以即使你还没有使用过它们，这部分也将会很有趣。

下一步是对除了设置按钮之外的所有表情符号按钮进行操作，对这些需要动画的按钮创建一个Outlet Collection。

![](https://www.natashatherobot.com/wp-content/uploads/Screen_Shot_2016-07-24_at_6_10_36_AM-1024x331.png)
￼

正如你所看到的那样，创建一个Outlet Collection与创建一个Outlet的方式是一样的，只不过Outlet Collection是子控件组成的数组。所以按住Control键，并拖动鼠标去创建一个新的Outlet Collection即可。

### 动画
我们将通过控制表情按钮的`hidden`属性来达到动画的效果。首先，我们需要确认这些表情按钮默认是被隐藏的。我们可以遍历所有的表情按钮，并设置他们去隐藏。

```
@IBOutlet var emojiButtons: [UIButton]! {
didSet {
    emojiButtons.forEach {
        $0.isHidden = true
    }
}
}
```

下面将进行有难度的操作，你准备好了吗？

在这里，当设置按钮被点击的时候，我们将执行一个动画去遍历所有的表情按钮，并且切换他们的`hidden`状态。

```
@IBAction func onSettingsButtonTap(_ sender: AnyObject) {
    UIView.animate(withDuration: 0.3) {
        self.emojiButtons.forEach {
            $0.isHidden = !$0.isHidden
        }
    }
}
```

### 总结

这些小技巧，通过如此少的代码量就使`stackViews`超乎想象的强大。我因此受到了很大的鼓舞，相信可以通过`StackViews`做更有创意的东西。非常感谢  `@atomicbird` !

你可以在[这里](https://github.com/NatashaTheRobot/StackViewAnimationExample)看到我的示例代码，同时可以与使用`autolayout`的情况做一个比较。

有兴趣想要学习更多吗？那就加入我吧，9月1日和2日在纽约一起为`swift`社区庆祝。