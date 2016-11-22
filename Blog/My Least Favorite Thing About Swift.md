> * 原文地址：[My Least Favorite Thing About Swift](http://khanlou.com/2016/08/my-least-favorite-thing-about-swift/)
> * 译者：Joy

在以前，我已经写过很多喜欢` Swift `的理由。但是今天，我想要写的是这门语言不足的地方。这是一个带有很多细微区别的复杂问题，所以我将举出几个例子，去指出这门语言做的好的地方，做的不好的地方，以及将来会怎样。

### 语言内定义 VS 非语言内定义

看一下 `Ruby `语言的情况

`Ruby` 的 `attr_accessor `是一种为实例变量定义 `setter `和 `getter `的方法。你可以像下面这样使用它

```
class Person
	attr_accessor :first_name, :last_name
end

```

乍一看，它像是一种语言特性，与 `Swift `的` let `和` var `属性声明方式相似。但是， Ruby 的函数即便没有括号也可以被调起，而且这只是一个被定义在类范围内的函数（在 Swift 中我们将会调起一个静态函数）：

```
def self.attr_accessor(*names)
  names.each do |name|
    define_method(name) {instance_variable_get("@#{name}")} # This is the getter
    define_method("#{name}=") {|arg| instance_variable_set("@#{name}", arg)} # This is the setter
  end
end
```
如果你不能读懂` Ruby` ，没有关系。它使用了一个名为` define_method `的函数来为你传递的变量创建一个` getter `和 `setter `方法。在 `Ruby `中，` @first_name` 意味着一个名为` first_name` 的实例变量。

这是我爱上` Ruby `这门语言的原因之一 ，他们首先设计了元数据工具集，去创建有用的语言特性，然后使用这些工具去实现他们想要的语言特性。[ Yehuda Katz explores](http://yehudakatz.com/2010/02/07/the-building-blocks-of-ruby/)讲述了` Ruby `是如何在它的` blocks `中实现这一想法的。因为 Ruby 的语言特性是通过相同的工具和相同的语言编写而成，并且这门语言所有用户都有权使用，所以，在这门语言的范畴内和相似风格的情况下，用户也可以编写语言特性。


