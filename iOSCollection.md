## Tips

* 资源会越来越多，不方便查找，您可以使用 `command F`来进行关键字查找

## Out-Of-Memory

* [腾讯 iOS 爆内存问题解决方案 OOMDetector](https://juejin.im/post/5a58f1a76fb9a01cab283392?utm_medium=ios&utm_source=weixinqun)
* [iOS 内存 Jetsam 原理探究](http://satanwoo.github.io/2017/10/18/abort/)
* [Reducing FOOMs in the Facebook iOS app](https://code.facebook.com/posts/1146930688654547/reducing-fooms-in-the-facebook-ios-app/)

## 日志系统

* [微信高性能线上日志系统xlog剖析](http://satanwoo.github.io/2017/07/30/xlog/)
* [【Dev Club 分享】微信mars 的高性能日志模块 xlog](https://mp.weixin.qq.com/s?__biz=MzA3NTYzODYzMg%3D%3D&mid=2653578220&idx=3&sn=5691bdd82ae0715ab12fd6b849f74aee&chksm=84b3b1ebb3c438fddf86bf74e232fa14222932ebd6d6439bed04ad17d5e64e9270d4ab460f64&scene=4)
* [微信跨平台组件mars-xlog架构分析及迁移思路](https://blog.desmondyao.com/mars-xlog/)
* [从Mars的Xlog组件学习日志系统](http://www.jianshu.com/p/f53b4575d3ae)
* [微信终端跨平台组件Mars介绍](https://futucocoa.github.io/2017-01-20-TencentWechatMarsIntroduction/)
* [Mars -- Wiki ](https://github.com/Tencent/mars/wiki)
* [微信跨平台组件mars-xlog架构分析及迁移思路](https://zhuanlan.zhihu.com/p/25011775)
* [NSLog效率低下的原因及尝试lldb断点打印Log](http://blog.sunnyxx.com/2014/04/22/objc_dig_nslog/)
* [Logan：美团点评移动端基础日志库揭秘](https://mp.weixin.qq.com/s/ojUZjT4YhUWZ3jh37UtJmg)

## IP 直连

* [可能是最全的iOS端HttpDns集成方案](http://www.jianshu.com/p/cd4c1bf1fd5f)
* [DNS污染方案调研](https://github.com/ChenYilong/iOSBlog/tree/master/Tips/DNS%E6%B1%A1%E6%9F%93%E6%96%B9%E6%A1%88%E8%B0%83%E7%A0%94)
* [HTTPDNS 在 iOS 中的实践](http://nathanli.cn/2016/12/20/httpdns-%E5%9C%A8-ios-%E4%B8%AD%E7%9A%84%E5%AE%9E%E8%B7%B5/)
* [移动解析HTTPDNS在App开发中实践总结](http://iosfly.com/2016/12/03/HTTPDNS/)
* [也谈 HTTPS - HTTPDNS + HTTPS](https://blog.alswl.com/2016/11/https-1/)
* [HTTPDNS域名解析场景下如何使用Cookie？](https://yq.aliyun.com/articles/64356)
* [阿里云相关最佳实践](https://helpcdn.aliyun.com/document_detail/30143.html?spm=5176.7758278.6.562.Kfegul)
* [Server Name Indication（SNI）](http://blog.csdn.net/makenothing/article/details/53292335)

## HTTPS  证书验证

* [iOS 中 HTTPS 证书验证浅析](https://zhuanlan.zhihu.com/p/24920405)
* [iOS 中对 HTTPS 证书链的验证](http://www.jianshu.com/p/31bcddf44b8d)
* [正确使用AFNetworking的SSL保证网络安全](http://www.jianshu.com/p/4102b817ff2f)
* [AFNetworking之于https认证](http://www.jianshu.com/p/a84237b07611)

## WebView 性能监控

* [如何通过WebView监控提升WebAPP性能](https://segmentfault.com/a/1190000005181254)
* [移动端iOSH5性能监控技术角度分析](http://www.jianshu.com/p/e4a2b8521fe6)
* [监控WebView请求中的页面性能数据，JS错误等](https://github.com/jwcqc/WebViewMonitor)
* [WebView性能、体验分析与优化](https://tech.meituan.com/WebViewPerf.html)

## Method Swizzle

* [Method Swizzling的各种姿势](http://www.tanhao.me/code/160723.html/)
* [Objective-C Method Swizzling 的最佳实践](http://blog.leichunfeng.com/blog/2015/06/14/objective-c-method-swizzling-best-practice/)

## 获取每个方法的执行时间

* [深入剖析 iOS 性能优化](http://www.jianshu.com/p/c58001ae3da5)
* [全局方法耗时统计之 hook 踩坑之旅](http://linusling.com/2016/12/17/statistics-of-method-time-consuming-in-ios/)
* [hook objc_msgSend](https://github.com/zteshadow/objc_msgSend)
* [Dissecting objc_msgSend on ARM64](https://github.com/idevqa/FridayQA/blob/master/2017/2017-06-30.md)
* [为什么objc_msgSend必须用汇编实现](http://blog.csdn.net/u011342466/article/details/52741003)
* [HookZzModules](https://github.com/jmpews/HookZzModules/tree/master/hook_objc_msgSend)
* [AppleTrace - Performance Analysis Tool](http://everettjf.com/2017/09/21/appletrace/)


## iOS 实时卡顿检测

* [iOS应用UI线程卡顿监控](http://mrpeak.cn/blog/ui-detect/) －（来源：MrPeak杂货铺）
* [微信读书 iOS 性能优化总结](http://wereadteam.github.io/2016/05/03/WeRead-Performance/) － (来源：WeRead团队博客)
* [检测iOS的APP性能的一些方法](http://www.starming.com/index.php?v=index&view=91) － (来源：戴铭)
* [微信iOS卡顿监控系统](http://mp.weixin.qq.com/s?__biz=MzAwNDY1ODY2OQ==&mid=207890859&idx=1&sn=e98dd604cdb854e7a5808d2072c29162&scene=4#wechat_redirect) － (来源：微信移动)
* [iOS 实时卡顿监控](https://github.com/suifengqjn/PerformanceMonitor) － (来源：fengshi)

## Tagged Pointer

* [深入理解Tagged Pointer](http://www.infoq.com/cn/articles/deep-understanding-of-tagged-pointer/)
* [采用Tagged Pointer的字符串](http://www.cocoachina.com/ios/20150918/13449.html)

## NSURLProtocol

* [NSURLProtocol全攻略](http://www.jianshu.com/p/02781c0bbca9) - (from : 大娱乐家Q)
* [iOS 开发中使用 NSURLProtocol 拦截 HTTP 请求](http://www.jianshu.com/p/f9ecdb697fd9) - (from : Draveness)

## iOS Crash 收集分析

* [iOS异常捕获](http://www.iosxxx.com/blog/2015-08-29-iosyi-chang-bu-huo.html) － （来源：向晨宇的技术博客）
* [漫谈iOS Crash收集框架](http://www.cocoachina.com/ios/20150701/12301.html) －（来源：念茜的博客）
* [聊聊从iOS固件提取系统库符号](http://blog.csdn.net/crash163/article/details/52634606)
* [iOS Crash分析必备：符号化系统库方法](https://zuikyo.github.io/2016/12/18/iOS%20Crash%E6%97%A5%E5%BF%97%E5%88%86%E6%9E%90%E5%BF%85%E5%A4%87%EF%BC%9A%E7%AC%A6%E5%8F%B7%E5%8C%96%E7%B3%BB%E7%BB%9F%E5%BA%93%E6%96%B9%E6%B3%95/)
* [iOS崩溃堆栈信息的符号化解析](http://www.jianshu.com/p/953f0961157a)
* [杨咏臻 | 实战iOS崩溃堆栈的符号化解析](http://www.10tiao.com/html/473/201708/2651474079/1.html)
* [Handling unhandled exceptions and signals](http://www.cocoawithlove.com/2010/05/handling-unhandled-exceptions-and.html)
* [iOS dSYM文件结构剖析](http://www.csdn.net/article/2015-08-04/2825369)
* [iOS 如何获取 Mach-O 的 UUID](http://www.jianshu.com/p/9201d5e34eb6)
* [正确区分Mach 异常、Unix 信号 和NSException 异常](https://wangdetong.github.io/2016/07/20/20160720Mach%E5%BC%82%E5%B8%B8/)

## 程序的启动与优化

* [iOS App从点击到启动](http://www.jianshu.com/p/231b1cebf477)－（来源：简书·吴白）
* [优化 App 的启动时间](http://yulingtianxia.com/blog/2016/10/30/Optimizing-App-Startup-Time/)－（来源：玉令天下的博客）
* [iOS 程序 main 函数之前发生了什么](http://blog.sunnyxx.com/2014/08/30/objc-pre-main/)－（来源：sunnyxx）
* [Facebook iOS App如何优化启动时间](http://www.baijingapp.com/article/3286)
* [点击 Run 之后发生了什么？](http://www.jianshu.com/p/d5cf01424e92) - (来源：Joy)
* [把玩链接器](https://github.com/joy0304/Joy-Blog/blob/master/Contents/%EF%BC%88%E5%AD%99%E6%BA%90%EF%BC%89%E6%8A%8A%E7%8E%A9%E9%93%BE%E6%8E%A5%E5%99%A8.pdf)－（来源：sunnyxx）
* WWDC 2016 Session 406
* [由App的启动说起](http://oncenote.com/2015/06/01/How-App-Launch/)－（来源： jaminzzhang）
* [今日头条iOS客户端启动速度优化](https://techblog.toutiao.com/2017/01/17/iosspeed/) - (来源：今日头条)
* [干货 | 途牛iOS客户端启动速度优化实践](https://mp.weixin.qq.com/s?__biz=MzAwOTE0ODEwMQ==&mid=2650686830&idx=1&sn=d2f060ceb57c235c79d6709f628fcb67&chksm=836ee6c4b4196fd222ecd37cee720e321f25db8ea61b3ce0e3b03e1f7ecd600cf4332ee850bb&mpshare=1&scene=24&srcid=0428m0Yvb48i7iluIzUu35pP&key=80dec19febfab7e013b31928af2e3ceec2bb5146db6a534f611c55c79becc04a11138f465567e55d3b60efdcee93f969e52bbee54b1e5eee491c4013f3130218cc96e44d01dfdfb2c31a6796c0f24951&ascene=0&uin=MTY3NzkzNjI0NA%3D%3D&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.12.3+build(16D32)&version=12020110&nettype=WIFI&fontScale=100&pass_ticket=op%2FZ0lEAYmtlPRYF1sCK%2BvfhJaCS7%2BHMTZHZqGKIrTvJLI%2Boq2UvUzKikRhKS2%2Br)
* [阿里数据iOS端启动速度优化的一些经验](http://www.jianshu.com/p/f29b59f4c2b9)
* [一次立竿见影的启动时间优化](http://www.jianshu.com/p/c1734cbdf39b)
* [iOS App 启动性能优化](https://zhuanlan.zhihu.com/p/28600469)
* [如何精确度量 iOS App 的启动时间](https://www.jianshu.com/p/c14987eee107)
* [iOS端技术 | iOS main()之前都发生了什么](https://mp.weixin.qq.com/s/L7ZiH8j22F4ZJmpZzGxXSA)
* [WWDC 2017 App Startup Time: Past, Present, and Future](https://techblog.toutiao.com/2017/07/05/session413/)
* [A method of hook static initializers](http://everettjf.com/2017/02/06/a-method-of-hook-static-initializers/)

## APM：性能检测

* [美团外卖移动端性能监测体系实现](http://mp.weixin.qq.com/s/MwgjpHj_5RaG74Z0JjNv5g) - (来源：美团)
* [移动端 APM 产品研发技能](http://www.infoq.com/cn/presentations/mobile-terminal-apm-product-development-skills?utm_source=presentations_about_apm1&utm_medium=link&utm_campaign=apm1) -（来源：听云）
* [NeteaseAPM iOS SDK技术实现分享](http://chuansong.me/n/322629451836)- (来源：网易)
* [告别“伪连接”！如何高效检测iOS中的真实连接状态](http://chuansong.me/n/2577466) - (来源：移动开发前线)
* [饿了么移动技术负责人胡彪：浅谈App优化](http://blog.tingyun.com/web/article/detail/1122) - (来源：饿了么)
* [
阿里百川码力APP监控来了 重量级选手进入APM市场](http://www.imooc.com/article/14205?block_id=tuijian_wz) - (来源：阿里百川)
* [微信读书 iOS 质量保证及性能监控](https://wereadteam.github.io/2016/12/12/Monitor/) - (来源：微信读书)
* [饿了么的移动APM架构实践](http://weibo.com/ttarticle/p/show?id=2309352000024049735869695715) - (来源：饿了么)
* [手机淘宝：亿级用户APP的快速运维交付实践](https://mp.weixin.qq.com/s?__biz=MzAxNDEwNjk5OQ==&mid=2650400312&idx=1&sn=ce8468991c70ab2e06634f59cd2b6865&chksm=83952e20b4e2a736f701853a483da535312a258a56ca87d65b8ef77e8cf012dab9145659a0aa&scene=0&key=459eeebe1b51063320bc30b7024529048032de1a4d3a8e7cf01dbfc995da8f74fe85688c8be0471b1fdcb82d9b875d163a62f42e9ca04946e2c899194097fb93632ca7790f6fb7395d897442b9272213&ascene=0&uin=MTY3NzkzNjI0NA%3D%3D&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.12.2+build(16C67)&version=12020010&nettype=WIFI&fontScale=100&pass_ticket=JE5tAT8H%2BfKdFzHQq72mWMIv%2BitHWOqOma3xmX5OeGGPWz2mPXxz3kaQE1WSKJlw)
* [蘑菇街移动端全链路跟踪保障体系](http://www.infoq.com/cn/presentations/mobile-terminal-full-link-tracking-and-security-system)
* [阿里-性能可视化之略](https://github.com/joy0304/Joy-Blog/blob/master/Contents/4%EF%BC%8C%E9%99%88%E6%AD%A6-%20%E6%80%A7%E8%83%BD%E5%8F%AF%E8%A7%86%E5%8C%96%E4%B9%8B%E8%B7%AF.pdf)
* [网易 APM 数据处理系统实践](http://www.infoq.com/cn/presentations/practice-of-netease-apm-data-processing-system?utm_campaign=rightbar_v2&utm_source=infoq&utm_medium=presentations_link&utm_content=link_text)
* [蘑菇街 App 的稳定性与性能实践](http://pstatic.geekbang.org/pdf/5809d9ef9b45b.pdf?e=1491025393&token=eHNJKRTldoRsUX0uCP9M3icEhpbyh3VF9Nrk5UPM:lKVEa3b-uxMSKW75daZyi0p32aQ=)
* [饿了么移动基础设施的建设](http://www.jianshu.com/p/9c1979ef2a70)
* [ iOS 性能监控 SDK —— Wedjat（华狄特）开发过程的调研和整理](https://github.com/aozhimin/iOS-Monitor-Platform)

## APM 数据分析

* [基于大数据APM排查的智能根源分析](https://mp.weixin.qq.com/s?__biz=MzI4NzE1NTYyMg==&mid=2651103008&idx=1&sn=e7d8158960ac10aefd34e863073a795f&chksm=f021cbe9c75642ff9e7cc4c663e5a4c899d85a08d5612b854497d1c92f33d5a4a213512e0dee&scene=0&key=4ab4dfbdf0fdc9bbf0d696ad2f5b3cb9e4190b01615852590f7f6ae298b937ae6b31af98bbe5527f330dd476cbc49596e2983b137321af91ec4f4ace61d115dd2ab1be100b7f54026bcb84e1694fa1c0&ascene=0&uin=MTY3NzkzNjI0NA%3D%3D&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.12.3+build(16D32)&version=12020110&nettype=WIFI&fontScale=100&pass_ticket=mOd2AdvHs2Rmo%2BolHWYhMI2uj8aQ8nik3pvNu%2FB1d1b2D1zE8L6OHW3EE8JnH9sN)
* [网易 APM 数据处理系统实践](http://www.infoq.com/cn/presentations/practice-of-netease-apm-data-processing-system?utm_campaign=rightbar_v2&utm_source=infoq&utm_medium=presentations_link&utm_content=link_text)

## 掌中测

* 目前这边的产品有阿里百川掌中测、腾讯 GT 等产品
* [腾讯 GT 开源代码](https://github.com/Tencent/GT) - (来源：腾讯)

## 用户行为无埋点收集

* [SDK无埋点技术在百分点的探索和实践](http://mp.weixin.qq.com/s?__biz=MzA3ODg4MDk0Ng==&mid=2651112803&idx=1&sn=061e10ff89c15f893511688f9c7864c2#rd) - (来源：移动开发前线)
* [有货iOS数据非侵入式自动采集探索实践](https://mp.weixin.qq.com/s/CkCs-pVq7ax6Kp6vRnFdlQ)
* [美团点评前端无痕埋点实践](http://tech.meituan.com/mt-mobile-analytics-practice.html) - (来源：美团)
* [iOS无埋点数据SDK实践之路](http://www.jianshu.com/p/69ce01e15042) - (from：netease)
* [iOS无埋点SDK 之 RN页面的数据收集](http://www.jianshu.com/p/0e1f2d357e39)
* [Android无埋点数据收集SDK关键技术](http://www.jianshu.com/p/b5ffe845fe2d)
* [网易HubbleData无埋点SDK在iOS端的设计与实现](https://mp.weixin.qq.com/s?__biz=MzIyNjY1Mjg1MA==&mid=2247483740&idx=1&sn=e4797093fa3a61a905aa24ffab64a22d&chksm=e86c6681df1bef97c68d8e340680c9d676de363dc44669619a0e589ea8cc5029b38b5629bc78&mpshare=1&scene=24&srcid=0424aOBeuoj2pbmJid8Y98la&key=8c3e7ded42e4df897f336993d16779d366a40869163c3784e0d0f0c4a74bdd1bb76ffd4a0fc7d1335f7e7d6a8c23d9e1731d4948f0e7f8adca24ac1460f86629ba44dea704d25b084e5375f8dd3e001a&ascene=0&uin=MTY3NzkzNjI0NA%3D%3D&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.12.3+build(16D32)&version=12020110&nettype=WIFI&fontScale=100&pass_ticket=r5CsnaUuHmsvqzjfj%2FrgCgbIQSgHWM0DKFdckEzQY27bsb8XL7NvdpmMnnXqrmR6)
* [网易乐得无埋点之路](https://github.com/joy0304/Joy-Blog/blob/master/Contents/%E7%BD%91%E6%98%93%E4%B9%90%E5%BE%97%E6%97%A0%E5%9F%8B%E7%82%B9%E4%B9%8B%E8%B7%AF.pdf)

## Aspects

* [面向切面编程之 Aspects 源码解析及应用](http://wereadteam.github.io/2016/06/30/Aspects/?utm_source=tuicool&utm_medium=referral) -（来源：微信读书）
* [iOS 如何实现Aspect Oriented Programming (上)](http://www.jianshu.com/p/dc9dca24d5de) - （来源：halfrost ）
* [iOS 如何实现Aspect Oriented Programming (下)](http://www.jianshu.com/p/2ad7e90b521b)- （来源：halfrost ）

## 网络优化

* [2016年携程App网络服务通道治理和性能优化实践](http://chuansong.me/n/466033251461) - (来源：携程) 
* [携程App的网络性能优化实践](http://chuansong.me/n/2577464) - (来源：携程)
* [万人低头时代，支付宝APP无线网络性能该如何保障](http://course.tuicool.com/course/details/58058f15a826b5f9e86678fb) - (来源：云栖社区)
* [移动网络下的性能优化之网络篇](https://blog.wilddog.com/?p=974)
* [深度优化iOS网络模块](http://mrpeak.cn/blog/ios-network/)- (来源：mrpeak)
* [美团点评移动网络优化实践](http://tech.meituan.com/SharkSDK.html)- (来源：美团)
* [全局精确流量调度新思路-HttpDNS服务详解](http://mp.weixin.qq.com/s?__biz=MzA3ODgyNzcwMw==&mid=201837080&idx=1&sn=b2a152b84df1c7dbd294ea66037cf262&scene=2&from=timeline&isappinstalled=0&utm_source=tuicool)
* [美柚：女性移动APP安全攻防战](https://yq.aliyun.com/articles/61710)
* [网络诊断](https://github.com/Lede-Inc/LDNetDiagnoService_IOS)
* [iOS监控-DNS劫持](http://www.jianshu.com/p/08f7146e045f)
* [iOS网络请求优化之DNS映射](http://www.mrpeak.cn/ios/2016/01/22/dnsmapping)
* [QQ空间在生产环境使用QUIC协议的经验](https://mp.weixin.qq.com/s/qD9-Xj0CEil0Wtwq5eiPTg)
* [美图HTTPS优化探索与实践](https://mp.weixin.qq.com/s/mRcz8o0usoqm_cEoGg9btg)


## 性能优化

* [携程移动端 UI 界面性能优化实践](http://weibo.com/ttarticle/p/show?id=2309404042028194341312) - (来源：携程)
* [携程移动端性能优化](http://mp.weixin.qq.com/s?__biz=MzA4MzEwOTkyMQ==&mid=2667377051&idx=1&sn=3030c1a7d234c202342e5b2eea424320&chksm=84f320d5b384a9c31b15462fd2bfc1dfec33540dfeaf7835548385d63377a1874a1effac8520&mpshare=1&scene=23&srcid=0105iCT54dseMAIkJ3Uvl2tA#rd) - (来源：携程)
* [手机淘宝性能优化](http://mp.weixin.qq.com/s?__biz=MzAxNDEwNjk5OQ==&mid=203394618&idx=1&sn=58b05aaf205b20c361935a02282392d9&scene=23&srcid=0604MsP7tTbo6cELNNdVYQ9O#rd)- (来源：淘宝)

## CocoaPods

* [细聊 Cocoapods 与 Xcode 工程配置](http://www.jianshu.com/p/ad2e37e741bb) -（来源：bestSwifter）
* [CocoaPods 都做了什么？](http://www.jianshu.com/p/84936d9344ff) - （来源：Draveness）
* [最新的CocoaPods的使用教程(一)](http://www.jianshu.com/p/dfe970588f95) -（来源：简书-Dely）
* [最新的CocoaPods的使用教程(二)](http://www.jianshu.com/p/c6c258a7a3b8)
* [Cocoapods系列教程(一)——入门](http://ios.jobbole.com/88358/) -（ 来源：Pluto-Y）
* [Cocoapods系列教程(二)——开源主义接班人](http://ios.jobbole.com/88361/) 
* [Cocoapods系列教程(三)——私有库管理和模块化管理](http://ios.jobbole.com/88363/)
* [制作Swift和Objective-C Mixed的Pod](http://www.jianshu.com/p/c7623c31d77b) - (来源：南栀倾寒)
* [给 Pod 添加资源文件](http://blog.xianqu.org/2015/08/pod-resources/?utm_source=tuicool&utm_medium=referral) - (来源：闲趣的网志)
* [优雅的开发Swift和Objective C混编的Framework](http://blog.csdn.net/hello_hwc/article/details/58320433) - (来源：LeoMobileDeveloper)
* [使用CocoaPods开发并打包静态库](http://www.cnblogs.com/brycezhang/p/4117180.html)
*  [基于 CocoaPods 进行 iOS 开发](https://blog.dianqk.org/2017/05/01/dev-on-pod/)
## Mach-O 

* [趣探 Mach-O：文件格式分析](http://www.jianshu.com/p/54d842db3f69) - (来源：Joy)
* [Mach-O 的动态连接](http://turingh.github.io/2016/03/10/Mach-O%E7%9A%84%E5%8A%A8%E6%80%81%E9%93%BE%E6%8E%A5/) -（来源：mrh）
* [动态修改 C 语言函数的实现](http://www.jianshu.com/p/625a61dfe039) -（来源：Draveness）
* [fishhook_analysis](https://github.com/turingH/fishhook_analysis)-（来源：mrh）
* [趣探 Mach-O：FishHook 解析](http://www.jianshu.com/p/9e1f4d771e35) - (来源：Joy)
* [XNU、dyld源码分析Mach-O和动态库的加载过程(上)](https://mp.weixin.qq.com/s/I60p2M-IHDmeUanDUkFdVw)
* [XNU、dyld 源码分析，Mach-O 和动态库的加载过程 (下)](https://mp.weixin.qq.com/s/fdDPyjRkVf9AdWiikBagHg)
* [dylib动态库加载过程分析](https://feicong.github.io/2017/01/14/dylib/)
* [巧用符号表 - 探求 fishhook 原理（一）](http://www.desgard.com/fishhook-1/)

## 动态代理（NSProxy）

* [objc与鸭子对象（上）](http://blog.sunnyxx.com/2014/08/24/objc-duck/) - (来源：sunnyxx)
* [objc与鸭子对象（下）](http://blog.sunnyxx.com/2014/08/26/objc-duck-advanced/)
* [利用NSProxy实现消息转发-模块化的网络接口层设计](http://tutuge.me/2015/02/16/%E5%88%A9%E7%94%A8NSProxy%E5%AE%9E%E7%8E%B0%E6%B6%88%E6%81%AF%E8%BD%AC%E5%8F%91-%E6%A8%A1%E5%9D%97%E5%8C%96%E7%9A%84%E7%BD%91%E7%BB%9C%E6%8E%A5%E5%8F%A3%E5%B1%82%E8%AE%BE%E8%AE%A1-%E5%8E%9F%E5%88%9B/) - （来源：土土哥）

## 抓包

* [Charles 从入门到精通](http://blog.devtang.com/2015/11/14/charles-introduction/)
* [Wireshark抓包iOS入门教程](http://mrpeak.cn/blog/wireshark/)
* [利用 WireShark 深入调试网络请求](http://www.jianshu.com/p/d1c30e33525d)
* [使用 Wireshark 调试 HTTP/2 流量](https://imququ.com/post/http2-traffic-in-wireshark.html)
* [获取NSURLResponse的HTTPVersion](http://www.th7.cn/Program/IOS/201701/1090816.shtml)
* [移动端https抓包那些事--进阶篇](http://www.cnblogs.com/JDragons/p/7332324.html)
* [Intercepting the App Store's Traffic on iOS](https://nabla-c0d3.github.io/blog/2013/08/20/intercepting-the-app-stores-traffic-on-ios/)

## 图像性能

* [谈谈 iOS 中图片的解压缩](http://blog.leichunfeng.com/blog/2017/02/20/talking-about-the-decompression-of-the-image-in-ios/)
* [如何避免图像解压缩的时间开销](http://longtimenoc.com/archives/ios%E5%A6%82%E4%BD%95%E9%81%BF%E5%85%8D%E5%9B%BE%E5%83%8F%E8%A7%A3%E5%8E%8B%E7%BC%A9%E7%9A%84%E6%97%B6%E9%97%B4%E5%BC%80%E9%94%80)
* [iOS图片加载速度极限优化—FastImageCache解析](http://blog.cnbang.net/tech/2578/)
* [iOS中的imageIO与image解码](http://blog.mrriddler.com/2016/07/20/iOS%E4%B8%AD%E7%9A%84imageIO%E4%B8%8Eimage%E8%A7%A3%E7%A0%81/)
* [Avoiding Image Decompression Sickness](https://www.cocoanetics.com/2011/10/avoiding-image-decompression-sickness/)
* [Chameleon is a port of Apple's UIKit for iOS to Mac OS X.](https://github.com/BigZaphod/Chameleon)
* [图片之旅](http://blog.mrriddler.com/2016/07/20/%E5%9B%BE%E7%89%87%E4%B9%8B%E6%97%85/)
* [移动端图片格式调研](https://blog.ibireme.com/2015/11/02/mobile_image_benchmark/)


## HTTP 2.0

* [Jerry Qu的HTTP2.0合辑](https://imququ.com/post/series.html)
* [[How to get HTTP protocol version from a given NSHTTPURLResponse?](http://stackoverflow.com/questions/39343725/how-to-get-http-protocol-version-from-a-given-nshttpurlresponse)]()
* [[http2-协议协商过程](https://segmentfault.com/a/1190000002757622)]()
* [[h2-13 中文版](https://github.com/fex-team/http2-spec)]()
*  [Hypertext Transfer Protocol Version 2 (HTTP/2)](https://httpwg.github.io/specs/rfc7540.html)
* [HPACK: Header Compression for HTTP/2](https://httpwg.github.io/specs/rfc7541.html)
* [Wireshark抓包iOS入门教程](http://mrpeak.cn/blog/wireshark/)
* [iOS HTTP/2 Server Push 探索](http://www.jianshu.com/p/d3959e5acfac)
* [HTTP/2 on iOS](http://www.floriangoessler.de/ios/2015/08/30/HTTP2-on-iOS.html)
* [HTTPS 与 HTTP2 协议分析](https://mp.weixin.qq.com/s?__biz=MzA4MzEwOTkyMQ==&mid=2667377675&idx=1&sn=d1911d5f6c431cdecc3da933209d1195&chksm=84f32545b384ac538b5a400e8b2773b68377e1778ca5a1ed7b40e92aa715a58bb92a9d7777e7&scene=0&key=99bf2741c7bdd93a0c79743cf7626cc8653a7306d7bdaaad41a9e10fc272ccf25d1b6da51ad141e2c5f62b016e34ba685e355f76f03ab877ebb44dac9ceba9a9ae5c0b8ab9739e88d967a077d4a3d5be&ascene=0&uin=MTY3NzkzNjI0NA%3D%3D&devicetype=iMac+MacBookPro12%2C1+OSX+OSX+10.12.3+build(16D32)&version=12020110&nettype=WIFI&fontScale=100&pass_ticket=v4f3j82l8ughtmSZjfn5%2FFRoI%2BM4ntCq8S9SgIaAiDpg6FDq6D9dXVa3Hs9kv2R4)
* [http2讲解](https://www.gitbook.com/book/ye11ow/http2-explained/details)
* [HTTP 2 的新特性你 get 了吗？](https://www.qcloud.com/community/article/541321?fromSource=gwzcw.93353.93353)
* [HTTP/2探索第一篇——概念](https://www.qcloud.com/community/article/164816001481011799?fromSource=gwzcw.93320.93320.93320)
* [WEB加速，协议先行](https://zhuanlan.zhihu.com/p/27938635?group_id=870372159967617024)
* [从 HTTP2 到 QUIC——QQ 空间 Web 加速实践](http://ppt.geekbang.org/slide/show/1134)

## JavaScript 与 iOS 交互

* [JavaScript 与 Objective-C 相互通信交互](http://www.skyfox.org/javascript-ios-navive-message.html)
* [iOS中UIWebView与WKWebView、JavaScript与OC交互、Cookie管理看我就够](http://blog.darkangel7.com/2016/09/01/iOS%E4%B8%ADUIWebView%E4%B8%8EWKWebView%E3%80%81JavaScript%E4%B8%8EOC%E4%BA%A4%E4%BA%92%E3%80%81Cookie%E7%AE%A1%E7%90%86%E7%9C%8B%E6%88%91%E5%B0%B1%E5%A4%9F%EF%BC%88%E4%B8%8A%EF%BC%89/)
* [Java​Script​Core](http://nshipster.cn/javascriptcore/)
* [浅谈iOS与H5的交互-JavaScriptCore框架](http://www.jianshu.com/p/0428d0734379)
* [深入浅出 JavaScriptCore](http://www.jianshu.com/p/ac534f508fb0)
* [iOS 中的 web 开发 JavaScriptCore](http://www.jianshu.com/p/66f98ace2a70)

## 长连接

* [iOS即时通讯，从入门到“放弃”？](http://www.jianshu.com/p/2dbb360886a8)
* [IM 即时通讯技术在多应用场景下的技术实现，以及性能调优](http://www.jianshu.com/p/8cd908148f9e)
* [国内 90%以上的 iOS 开发者，对 APNs 的认识都是错的](http://www.jianshu.com/p/ace1b422bad4)
* [微信iOS收款到账语音提醒开发总结](https://mp.weixin.qq.com/s/yYCaPMxHGT9LyRyAPewVWQ)
* [理解用户通知](http://ks.netease.com/blog?id=5437#sec-3-5)
* [即时通讯网](http://www.52im.net/)
* [CocoaAsyncSocket、SRWebSocket 源码解析](http://www.jianshu.com/u/14431e509ae8)

## atomic
* [从一道网易面试题浅谈OC线程安全](http://www.jianshu.com/p/cec2a41aa0e7)
* [atomic性能真的很差吗？](http://www.jianshu.com/p/15df680d510e)
* [atomic 和 nonatomic 有什么区别？](http://www.jianshu.com/p/7288eacbb1a2)
* [谈nonatomic非线程安全问题](http://www.jianshu.com/p/b075bfd67899)

## libffi 

* [如何动态调用 C 函数](http://blog.cnbang.net/tech/3219/)
* [libffi浅析](http://blog.csdn.net/ayu_ag/article/details/50706429)
* [在 C 语言中调用不定参数的外部函数](http://www.jianshu.com/p/eb4fe09903fb)
* [如何使用libffi库实现OC方法替换](http://www.jianshu.com/p/a1eb31799b9b)
* [libffi](https://www.atmark-techno.com/~yashi/libffi.html#Simple-Example)
* [Hook Objective-C Block with Libffi](http://yulingtianxia.com/blog/2018/02/28/Hook-Objective-C-Block-with-Libffi/)

## 直播相关

* [分辨率、帧率和码率三者之间的关系](https://developer.qiniu.com/pili/kb/3636/streaming-VideoProfile)
* [七牛直播云性能优化实践](https://zhuanlan.zhihu.com/p/23237201)
* [视频云直播中的关键帧技术探秘](https://mp.weixin.qq.com/s?__biz=MzIzMzk2NDQyMw==&mid=2247486809&amp;idx=1&amp;sn=53b8370aa59e187589192e811579fac3&source=41#wechat_redirect)
* [QQ 视频直播架构及原理](https://toutiao.io/posts/52gpw9/preview)
* [映客直播iOS App 性能优化实践](http://blog.tingyun.com/web/article/detail/1144)
* [移动直播技术秒开优化经验（含PPT）](https://mp.weixin.qq.com/s?__biz=MzAwMDU1MTE1OQ%3Cmark%3E&mid=2653547042&idx=1&sn=26d8728548a6b5b657079eeab121e283&scene=1&srcid=0428msEitG9LJ3JaKGaRCEjg&from=groupmessage&isappinstalled=0#wechat_redirect)
* [如何快速的开发一个完整的iOS直播app](https://www.jianshu.com/p/bd42bacbe4cc)

## 其他资源站推荐

* [Awesome iOS Resource：谨以此仓库献给那些和我一样坚守和奋战在一线的 iOS 开发者们](https://github.com/aozhimin/awesome-iOS-resource) - (aozhimin)
* [🇨🇳 老司机 iOS 周报](https://github.com/SwiftOldDriver/iOS-Weekly)
* [南峰子带队的 iOS 知识小集](https://github.com/southpeak/iOS-tech-set)

## 面试题

* [坚持完成这套学习手册，你就可以去 Google 面试了](http://geek.csdn.net/news/detail/107064#%E5%AF%86%E7%A0%81%E5%AD%A6)
* [ 《招聘一个靠谱的 iOS》](https://github.com/ChenYilong/iOSInterviewQuestions)

## iOS 技术栈和路线图

* [iOS 开发技术栈与进阶](http://blog.cnbang.net/tech/3354/) —— (bang)
* [iOS 软件安全工程师技能表](https://github.com/feicong/sec_skills) - （fei_cong）

## 推荐书单

操作系统

* 《深入解析Mac OS X & iOS操作系统》
* 《深入理解计算机系统（第三版）》

编译原理 & 汇编

*  《编译系统透视：图解编译原理》
*  《深入理解程序设计使用 Linux 汇编语言》
*  《程序员的自我修养（带目录）》
*  《编译原理－龙书 第二版》

安全相关

* 《图解密码技术 第三版》
*  《macOS软件安全与逆向分析》
* 《逆向工程权威指南上下册》
* 《iOS应用安全攻防实战》
* 《iOS应用逆向工程(第2版)》
* 《IDA权威指南第二版》

计算机网络

*  《网络是怎样连接的 - 户根勤》
*  《HTTPS 权威指南》
*  《Web 性能权威指南》
*  《HTTP/2 基础教程》

iOS 开发

*  《高性能 iOS 应用开发》
*  《iOS 成长之路》
*  《WWDC 17 内参》
*  《Objective-C高级编程 iOS与OS X 多线程和内存管理》
*  《Effective Objective-C》
*  《iOS Application Security 》
*  《Advanced Apple Debugging & Reverse_Engineering》
*  《LLVM Cookbook 中文版》

C/C++ 相关

* The C Programming Language, 2nd Edition(中文版)
* C++  Primer 中文版第 5 版

其他

* Pro Git

## 推荐视频

* [iOS逆向与安全](http://mooc.study.163.com/course/2001233000?tid=2001319000#/info) - (刘培庆 Alone_Monkey)
* [infoQ 历届大会演讲视频集锦](http://www.infoq.com/cn/presentations)