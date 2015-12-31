AndroidStudio 快捷键总结


http://www.jianshu.com/p/c873441be31e
昨天@陈启超同学发了 Android Studio for Experts (Android Dev Summit 2015) 的视频，我也跟着学习了一下。这个视频讲的非常好！做点小结，分享交流。

Completion
使用 Tab 补全，会自动编辑光标之后的字符串，如下，你在光标处键入 c 然后选择 contentEquals 然后回车，magic！


c.png
使用 ctrl + shift + space 智能补全，比如下图，按下组合键，magic！可以按两次哦！


c2.png
补充一个，尝试在编辑器中输入：new Bitmap().var

Selection
ctrl+ w 选中，继续操作会扩大选中范围，相反的操作是 ctrl + shift + w

选中后可以使用 Extra 快捷键重构为变量、方法等，这个可以在 Refactor -> Extra 下看到。
ctrl+ alt+ v：变量
ctrl+ alt+ c：常量
ctrl+ alt+ f：域值
ctrl+ alt+ p：参数
ctrl+ alt+ m：方法

这里我有一个快捷键没有听出来，就是从构造函数提取 parameters 为 fields，

public static class Init {
 public Init(String first, boolean second, int third) {
 }
}
感谢评论区的 @Will92Wang 指出，这个快捷键就是 alt + enter ，这是一个很强大的组合键。


c.png
LiveTemplates
这个内容极度丰富，我以前发过微博，可以在 Setting -> Editor -> Live Templates 下查看。举几个例子：

fori 和 foreach，在需要使用 for 循环时，尝试输入这两种 for 试试；

你还可以在数据集合变量后输入 .for，例如 list.for ，这时候你看一下补全，会列出三种 for 循环形式让你选择；

logt, logd, logm，在方法外输入 logt，在方法内输入 logd 试试；

另外还有 fbc, gone, iter 等等，感兴趣的话可以在 Setting -> Editor -> Live Templates 下看看。

接下来可以说是牛哄哄的技巧了，同时也说明 Android Studio 真是强大！

Replace Structurally
这里就不得不贴上很多代码了。比如以下资源文件，现在你想去掉所有的 translation_description ，技巧是使用 双击 shift 或者 ctrl + shift + a 调出搜索框然后搜索并选择 replace structurally ，编辑规则，选择 find，然后就可以十分便捷的批量修改了。

<resources>
    <string name="a_fragment" translation_description="false">Hello blank fragment</string>
    <string name="s_fragment" translation_description="false">Hello blank fragment</string>
    <string name="d_fragment" translation_description="false">Hello blank fragment</string>
    <string name="f_fragment" translation_description="false">Hello blank fragment</string>
</resources>

rs.png
另外你还可以把这个加入设置中，由编辑器自动检查，不符合规则的代码就会变黄，alt + enter 组合键进行修改。


ssi.png
这个方法对 java 源码同样适用，只需要修改 file type。

Search Structurally
这个和 Replace Structurally 大同小异，不再赘述，请自行尝试一下吧，^_^。

Designtime Attributes
在写好布局文件后，我们可能想要直接看一下 preview 效果，但是不想在编译时还预设这些属性和值，这个时候可以使用 tools 这个强大的工具。
首先我们要在布局文件中声明 xmlns:tools="http://schemas.android.com/tools"，放在最外层的 layout 就好。

<android.support.design.widget.CoordinatorLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    ...
使用起来跟 xmlns:android 没有什么差别。

<TextView
    android:id="@+id/tv"
    android:text="Hello World!"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    tools:visibility="visible"
    tools:text="tools"
    />
这里面比较逆天的是 tools:listitem ，看下面这段代码！

<GridView
    android:id="@android:id/list"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:numColumns="4"
    tools:listitem="@android:layout/simple_list_item_2" />
猜到了吗？它可以直接让我们 preview GridView的效果！


tools.png
如果你够细心的话一定会发现异常：那就是那个ToolBar 和 FAB 哪来的？！因为有 tools:showIn。这个属性声明在最顶层的 layout，值是 include 了本布局的一个父布局，它使得预览本布局时同时会渲染该父布局。

更多的 tools attributes 可以访问官方文档 Android Tools Project Site: Tools Attributes

Private Resources
Android studio 默认 library 的所有 resource 为 public，如果想保护某些 resources 不被外部访问，可以创建 res/values/public.xml，因为 public 是关键词，所以需要用 new file 的方式创建。至少要添加一行，未添加的则视为 private。

<resources>
    <public name="mylib_app_name" type="string"/>
</resources>
参考：Public and Private Resources

另外，如果在 library 的 build.gradle 中添加 resourcePrefix ，则所有资源必须以此 prefix 开头，否则会报错。

android {
    ...

    buildTypes {
        ...
    }

    resourcePrefix 'my_prefix_'
}
Resource Shrinking
这一段讲解了一个减少未使用的资源文件的技巧，可以参考官方文档：Android Tools Project Site: Resource Shrinking ，我就不做二次消化了。

扩展阅读
Android Studio Tips and Tricks

IntelliJ IDEA Default Keymap

Android Studio使用技巧系列教程

这是 Siva Velusamy 的演讲，这小伙的口音太重了！
Debug
Analyze Stacktrace
这个用于我们在分析 bug report 时很有用，使得它可以被点击然后定位到出错代码位置。复制它，然后打开 Analyze Stacktrace Dialog，入口为 Analyze → Analyze Stacktrace 或者搜索 analyze stacktrace﻿

测试用 bug report：

Process: com.iamwent.androidart, PID: 28178
java.lang.RuntimeException: Unable to resume activity {com.iamwent.androidart/com.iamwent.androidart.MainActivity}: java.lang.ArrayIndexOutOfBoundsException: length=3; index=3
    at android.app.ActivityThread.performResumeActivity(ActivityThread.java:2999)
    at android.app.ActivityThread.handleResumeActivity(ActivityThread.java:3030)
    at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2413)
    at android.app.ActivityThread.access$800(ActivityThread.java:144)
    at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1321)
    at android.os.Handler.dispatchMessage(Handler.java:102)
    at android.os.Looper.loop(Looper.java:135)
    at android.app.ActivityThread.main(ActivityThread.java:5277)
    at java.lang.reflect.Method.invoke(Native Method)
    at java.lang.reflect.Method.invoke(Method.java:372)
    at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:919)
    at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:714)
Caused by: java.lang.ArrayIndexOutOfBoundsException: length=3; index=3
    at com.iamwent.androidart.MainActivity.fromByteArray(MainActivity.java:32)
    at com.iamwent.androidart.MainActivity.onResume(MainActivity.java:28)
    at android.app.Instrumentation.callActivityOnResume(Instrumentation.java:1244)
    at android.app.Activity.performResume(Activity.java:6069)
    at android.app.ActivityThread.performResumeActivity(ActivityThread.java:2988)
    at android.app.ActivityThread.handleResumeActivity(ActivityThread.java:3030) 
    at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:2413) 
    at android.app.ActivityThread.access$800(ActivityThread.java:144) 
    at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1321) 
    at android.os.Handler.dispatchMessage(Handler.java:102)
我测试中发现，Analyze Stacktrace 好像分析的是当前复制到剪贴板的内容，所以先 crtl + c 一下。


as.png
对于第一个红框，它不是可选状态的，Siva 说的是有可能因为被混淆过了，但是我的 demo 并没有混淆，有待研究吧。然后，这就像我们在 Android Monitor 中抓到的 log 一样，可以直接跳转到出错代码处了。另外，可以点开左下的 Show files modification info，它会显示文件修改记录，让 Peter 现形。


st.png
View As
这个技巧讲的是 debug 的时候，在想要查看的 变量上面右键 -> View as ，选择合适的数据类型，可以更直观的看到该数据的状态：


vah.png
Customize Data View
我们还可以定制显示形式，这对于查看比较复杂的数据很有帮助，方法如上，右键选择 Customize Data View，然后如下图般做一些配置，就可以更直观的看到我们关注的信息了。我修改了渲染一个节点时的表达式，所以显示的是 5 。 Siva 演讲的时候修改的是 expanding a node 的表达式，这是错的，默认就好。


cdv.png
Evaluate Expression
另外还可以用 Evaluate Expression 来直接观察，它会跟随变化，也是右击进入，或者 alt + f8 。


e.png
Break Point
可以在断点上右击，给断点加上生效条件；或者设置断点不是 suspend，而是打印一些信息，ctrl + shift + f8


bp.png
接下来是 Alex Ruiz -- 我还以为 Ruiz 是瑞兹大魔王呢...
Android 导入 jar/aar module
这个比较简单，如图，new module，然后选择 import .JAR/.AAR project，然后一步步操作。


import.png
很值得注意的一点是，所有演讲的工程师都喜欢用 double shift + 关键字 的方式来完成作业，像上面的新建 module，他们会 double shift 调出对话框搜索 new module 的方式。十分高效！

new module 导入进来了，你还要做点配置。假设新 module 叫 smart，在 app/build.gradle 的 dependencies 中加入这一行

compile project(':smart')
另外根目录下的 settings.gradle 中也要 include 进去，大概长这样

include ':app', ':smart'
事实上我们完全可以用 Android Studio 自带的工程管理功能自动完成这一任务，直接从工具栏打开 Project Structure，或者 ctrl + alt + shift + s 组合键，操作如下：


project.png
Run Any Gradle Task
这个 tip 很方便，如下图，打开 gradle project，很多 task —— 如果没有点击同步一下，双击就可以运行。


task.png
Build Variants
首先一个技巧是通过 Build Variants 来选择运行时的任务，做过多渠道打包应该遇到过。


variants.png
另外一个技巧是，重构方法名或者类名时，让 Android Instrumentation Tests 和 Unit Tests 都能够随之一起被重构（默认只有一个是 active 的，project 窗口会高亮选中的 Tests），这需要打开 Android Studio 的一个选项，如下图。这个可能是 2.0 的功能，我在 1.5 上未发现该设置选项。


test.png
关于两种测试的最大区别从名字上就看的出来，Unit Tests 是 local tests，直接运行在电脑的 JVM 中，而则需要运行在 Android device 或者 emulator 上。更多可参考官方文档：Building Effective Unit Tests 。

这是 Michal Bendowski 的演讲
Create Test Classes
很简单，光标移动到被测试类名上，alt + enter，选择 create test，即可创建，使用组合键 ctrl + shift + t 可以在二者之间来回切换，当然，它还可以用于创建测试类。


ct.png
在 1.5 上创建测试类的时候和 build variants 中的选择有关，但是 Michal 演示的时候不需要担心这个，而且重构的时候也能同时被一起重构，应该是 2.0 的新功能。

后面还有 NDK 调试和 CPU 优化调试，有空再说，囧

 推荐拓展阅读
 喜欢  19 分享到微博 分享到微信 更多分享
×
喜欢的用户
85fabfccb118 简_ 2015.12.10 12:18
66efde81c3dd 小池laucherish 2015.12.10 09:47
226e627ca4d2 poberWong 2015.12.09 20:20
100 程前 2015.12.08 19:40
1 Aegis 2015.12.04 09:07
1acbdceac878 小鄧子 2015.12.03 21:16
Daab7bfa2276 王灵骁 2015.11.30 17:55
1 程序亦非猿 2015.11.30 09:28
1d499f09ed30 iamwent 2015.11.30 09:16
30 eecc560b595c 2015.11.28 13:18
30 匿名类 2015.11.27 20:03
30 DemoJameson 2015.11.27 19:01
100 3c32dd8fb178 2015.11.27 17:39
1 辽东小小 2015.11.27 06:22
Default avatar 字字珠玑 2015.11.26 22:50
23条评论 （ 按时间正序· 按时间倒序· 按喜欢排序 ） 添加新评论
73c40b3daa6f
追风917
2 楼 · 2015.11.26 21:20
最后几个不错

喜欢(0) 回复
iamwent： @追风917 因为平常用的少 :smile: 。
回复 2015.11.26 21:37
追风917： @iamwent 恩，感谢
回复 2015.11.26 21:39
 添加新回复
1
陈启超_V
3 楼 · 2015.11.27 01:23
争取全部总结完，党和人民信任你 :joy:

喜欢(0) 回复
iamwent： @陈启超_V  :joy: 超哥误我，后面几个哥们英语口音太重了
回复 2015.11.27 08:58
 添加新回复
1
辽东小小
4 楼 · 2015.11.27 06:23
英文不好的，做等大神把坑填满，辛苦辛苦

喜欢(0) 回复
iamwent： @辽东小小 还是直接学习视频效果好，有演示，我写的这个能辅助一番就心满意足了。
回复 2015.11.27 08:59
 添加新回复
Dc379f7642d8
jasonkxs
5 楼 · 2015.11.27 11:03
在某个list集合下面写 iterator只用拼写出iter也可以快速写出增强for循环，另外AS里面也可以运行单个java文件来测试，psvm快捷拼写出main方法，ctrl+shift+r就能直接运行main方法了 :joy:

喜欢(1) 回复
Dc379f7642d8
jasonkxs
6 楼 · 2015.11.27 11:04
另外滋瓷下 :smile:

喜欢(0) 回复
Dc379f7642d8
jasonkxs
7 楼 · 2015.11.27 11:52
我来纠正下5楼的回复，因为外接了键盘，所以误导了博主，看博主的学习精神和分享精神， 我来纠正下 Mac下面在AS里面运行单个java文件的快捷键是：control + shift+R, 而win和Linux下面是 Alt + Shift + F10 ，纠正完毕，撤了，博主要持续更新啊，我会持续关注~ :joy:

喜欢(1) 回复
1
Will92Wang
8 楼 · 2015.11.27 17:15
国内众多Android开发者的翻译热情值得称赞

『这里我有一个快捷键没有听出来，就是从构造函数提取 parameters 为 fields』
mac上应该是alt+enter出list，选 Bind Constructor parameter to fields

喜欢(1) 回复
1
李是猴子搬来的救兵
9 楼 · 2015.11.29 11:51
哈哈，我也正在做这个翻译，正好参考一下你的博客！多多交流哈！

喜欢(0) 回复
1acbdceac878
小鄧子
10 楼 · 2015.12.03 21:16
厉害:+1:🏻

喜欢(0) 回复
iamwent： @小鄧子  :smile:
回复 2015.12.07 15:38
 添加新回复
1
91b9ccc21580
11 楼 · 2015.12.04 09:16
在做selection演示的时候，弹出的extends selection是按什么键出来的，求作者解惑

喜欢(0) 回复
iamwent： @91b9ccc21580 你说的是弹出一个搜索框，然后可以输入 extends selection 吗？ctrl + shift + a
回复 2015.12.07 15:38
91b9ccc21580： @iamwent  :smile: 多谢
回复 2015.12.10 13:34
 添加新回复
1
李是猴子搬来的救兵
12 楼 · 2015.12.10 15:21
youtube上面的视频有英文字幕，还能翻译成中文，印度小哥的口音着实很重，可以参考字幕看看

喜欢(0) 回复
iamwent： @李是猴子搬来的救兵 应该是最近出的字幕吧，我看的时候还没有。感谢告知！
回复 2015.12.10 15:41
李是猴子搬来的救兵： @iamwent 我之前也翻译了这个视频的第一部分，也参照了你很多东西，但是后面的感觉用的少就没怎么翻译了，支持你哈！
回复 2015.12.10 15:44
iamwent： @李是猴子搬来的救兵 我也是弄着玩。其实不是用的少，而是还没遇到使用场景，比如极致地追求性能和压缩安装包等等。
回复 2015.12.10 16:22
 添加新回复
Default avatar
imesong
13 楼 · 2015.12.11 13:33
视频演示的快捷键是mac 的，这里总结的也是吗？

喜欢(0) 回复
iamwent： @imesong 我在最前面已经说明，我用的是 win7
回复 2015.12.11 13:56
 添加新回复
登录后发表评论

被以下专题收入，发现更多相似内容：

180
Android Tips
 添加关注
Android开发中遇到的一些小技巧/工具/总结/规范，包括原创和翻译！欢迎投稿
81篇文章 · 902人关注
180
android技术
 添加关注
安卓技术知识
346篇文章 · 333人关注
180
Android Dev
 添加关注
Android各种资源收集
152篇文章 · 131人关注