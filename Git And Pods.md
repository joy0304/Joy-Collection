# 列举自己常用的命令


## Git

###基本操作

* git init ：初始化仓库

* git clone

* git status

* git add：向暂存区存放文件

* git commit：将暂存区文件保存到仓库

* git commit -m "text"：-m 参数后面可以添加提交概述

* git log

* git log --pretty=oneline

* git pull

* git reflog：用来记录你以前的每一次命令


### 分支操作

*  git branch

* git branch -a

* git checkout -b newFeature：创建新的本地分支

* git checkout master：切换分支

* git merge newFeature：合并分支

* git branch -d newFeature：删除分支

* git push origin --delete remote_branch

* git stash ：可以把当前工作现场“储藏”起来，等以后恢复现场后继续

* git stash apply & git stash drop：恢复并删除

* git stash pop：恢复的同时把 stash 内容也删了

* git push origin --delete <branchName>：删除远程分支

* git branch -D br：删除本地分支


### 推送

* git push

* git push -u origin newFeature ： 推送到远程非主分支

### Tag

* git tag -l

* git tag -a 1.4 -m 'my version 1.4' ：创建 tag 以及描述信息

* git push origin --tags：推送所有标签

* git push origin 1.4：推送到远程

### 版本管理

* git reset --hard HEAD~2：回退到上上个版本

* git reset --hard commitID：回退后，又想回到未来的某个版本

* git reflog：用来记录你以前的每一次命令

### 协作方式

* [圣迪 - iOS里的Git版本管理方法](http://www.jianshu.com/p/7dddf0e9f1ef)

### 参考

* [廖雪峰的 Git 教程](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)

## Pods

### 安装配置

	//安装最新版本
	sudo gem install -n /usr/local/bin cocoa pods
	
	//安装指定版本
	sudo gem install -n /usr/local/bin cocoapods -v 1.0.0 
	
	//安装最新的release beta版本
	sudo gem install -n /usr/local/bin cocoapods --pre
	
	//卸载CocoaPods
	sudo gem uninstall cocoapods

	// 查看版本
	pod --version
	
	// 更新 podSpec 文件到本地的 ~/.cocoapods/repos目录下
	// 第三方开源库的Podspec文件托管在 https://github.com/CocoaPods/Specs
	pod setup
	
	// 作用类似于 pod setup，pod update 默认执行该操作，pod install 不会
	pod repo update
	
	//  不执行 pod repo update
	pod update --no-repo-update   
	
	
	
### Podfile

	pod 'JYCarousel', // 不显式指定依赖库版本，表示每次都获取最新版本
	pod 'JYCarousel', '0.01'// 只使用0.0.1版本
	pod 'JYCarousel', '>0.0.1' // 使用高于0.0.1的版本
	pod 'JYCarousel', '>=0.0.1' // 使用大于或等于0.0.1的版本
	pod 'JYCarousel', '<0.0.2' // 使用小于0.0.2的版本
	pod 'JYCarousel', '<=0.0.2' // 使用小于或等于0.0.2的版本
	pod 'JYCarousel', '~>0.0.1' // 使用大于等于0.0.1但小于0.1的版本，相当于>=0.0.1&&<0.1
	pod 'JYCarousel', '~>0.1' //使用大于等于0.1但小于1.0的版本
	pod 'JYCarousel', '~>0' //高于0的版本，写这个限制和什么都不写是一个效果，都表示使用最新版本
	
	// 使用本地文件
	pod 'JYCarousel', :path => '/Users/Dely/Desktop/JYCarousel'
	
	// subSpec 的形式导入
    pod 'MobileAnalysis/OnlineMonitor', '~> 4.0.0'
    
    使用仓库中的master分支:
	pod 'JYCarousel', :git => 'https://github.com/Delyer/JYCarousel.git'

	使用仓库的其他分支:
	pod 'JYCarousel', :git => 'https://github.com/Delyer/JYCarousel.git' :branch => 'release'

	使用仓库的某个tag:
	pod 'JYCarousel', :git => 'https://github.com/Delyer/JYCarousel.git', :tag => '0.0.1'
	
	或者指定一个提交记录:
	pod 'JYCarousel', :git => 'https://github.com/Delyer/JYCarousel.git', :commit => '5e473f1e0530bb3799f2f0d70554b292570bd8f0'

### PodSpec
