# iOSAnimation  
以前写了很多动效，不过没有系统的整理一下，最近正在准备动画相关的课程，刚好趁这个机会收集以前写的零零散散的效果。现在主要是集中在了BasicAnimation这块。后续会慢慢完善。
## CAAnimation  

view层的动画就不多说了。网上相关的例子很多。主要讲讲Layer层的动画。  
先来说下CAAnimation的优点。  

* 可交互性  
	* UIViewAnimation执行的时候无法响应时间，这个应该大家都知道。所以涉及到可交互动画的时候一般都使用的是CAAnimation 
* 可以pause，resume。  
	* 可以随时暂停，继续动画。这个UIViewAnimation应该也是做不到的  
* 实现的效果多样。  
	* 认真挖掘的话，可以玩的花样非常非常多，相比较而言，UIViewAnimation能够实现的效果就比较单一了。  
总结完了，我们来深入了解一下。  

## 第一部分CABasicAnimation  
先看初始化方法。  
`[CABasicAnimation animationWithKeyPath:keyPath];`
苹果官方文档有这么一段。  
![](http://7xi4jm.com1.z0.glb.clouddn.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-04-10%20%E4%B8%8B%E5%8D%888.58.32.png)  
其实只要是这些属性，都可以当做keypath来进行动画。  

Demo里的动画有这些。  
![](http://7xi4jm.com1.z0.glb.clouddn.com/animationCollection.gif)


