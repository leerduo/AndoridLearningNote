

Hongyang
生命不息，奋斗不止，万事起于忽微，量变引起质变
 目录视图 摘要视图 订阅
2016软考项目经理实战班     学院周年礼-顶尖课程钜惠呈现     有奖征文：在云上开发的无限可能     2015年度社区之星 放榜啦
 Android EventBus实战 没听过你就out了
2014-11-05 17:21 36010人阅读 评论(81) 收藏 举报
 分类： 【Android github 控件】（9）  【android 进阶之路】（61）  
版权声明：本文为博主原创文章，未经博主允许不得转载。
目录(?)[+]
转载请表明出处：http://blog.csdn.net/lmj623565791/article/details/40794879，本文出自：【张鸿洋的博客】
1、概述
最近大家面试说经常被问到EventBus，github上果断down了一份，地址：https://github.com/greenrobot/EventBus，的确是个不错的框架，主要用于事件的发布和订阅。
EventBus定义：是一个发布 / 订阅的事件总线。
这么说应该包含4个成分：发布者，订阅者，事件，总线。
那么这四者的关系是什么呢？
很明显：订阅者订阅事件到总线，发送者发布事件。
大体应该是这样的关系：

订阅者可以订阅多个事件，发送者可以发布任何事件，发布者同时也可以是订阅者。
好了，大体了解基本的关系以后，我们通过案例驱动来教大家如何使用；
2、代码是最好的老师
相信大家对Fragment都有所了解，现在我们的需求是这样的，两个Fragment组成主界面，左边的Fragment是个目录、即列表，右边的Fragment是详细信息面板；
a、目录的列表是从网络获取的。
b、当点击目录上的条目时，动态更新详细信息面板；
效果图：


看了这个需求，我们传统的做法是：
a、目录Fragment在onCreate中去开启线程去访问网络获取数据，获取完成以后，通过handler去更新界面。
b、在目录的Fragment中提供一个接口，然后详细信息面板去注册这个接口，当发生点击时，去回调这个接口，让详细信息面板发生改变。
其实这种做法也还是不错的，但是有了EventBus之后，我们交互会发生什么样的变化呢？拭目以待吧。
首先提一下：
EventBus.getDefault().register(this);//订阅事件
EventBus.getDefault().post(object);//发布事件
EventBus.getDefault().unregister(this);//取消订阅

1、MainActivity及其布局
[java] view plaincopy在CODE上查看代码片派生到我的代码片
package com.angeldevil.eventbusdemo;  
  
import android.os.Bundle;  
import android.support.v4.app.FragmentActivity;  
  
public class MainActivity extends FragmentActivity  
{  
    @Override  
    protected void onCreate(Bundle savedInstanceState)  
    {  
        super.onCreate(savedInstanceState);  
        setContentView(R.layout.activity_main);  
    }  
  
}  

[html] view plaincopy在CODE上查看代码片派生到我的代码片
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"  
    xmlns:tools="http://schemas.android.com/tools"  
    android:layout_width="match_parent"  
    android:layout_height="match_parent"  
    android:baselineAligned="false"  
    android:divider="?android:attr/dividerHorizontal"  
    android:orientation="horizontal"  
    android:showDividers="middle" >  
  
    <fragment  
        android:id="@+id/item_list"  
        android:name="com.angeldevil.eventbusdemo.ItemListFragment"  
        android:layout_width="0dip"  
        android:layout_height="match_parent"  
        android:layout_weight="1" />  
  
    <fragment  
        android:id="@+id/item_detail_container"  
        android:name="com.angeldevil.eventbusdemo.ItemDetailFragment"  
        android:layout_width="0dip"  
        android:layout_height="match_parent"  
        android:layout_weight="2" />  
  
</LinearLayout>  

可以看到，我们MainActvity可以说没有一行代码，布局文件即两个Fragment组成；
2、ItemListFragment
首先看个实体类：
[java] view plaincopy在CODE上查看代码片派生到我的代码片
package com.angeldevil.eventbusdemo;  
  
import java.util.ArrayList;  
import java.util.List;  
  
public class Item  
{  
    public String id;  
    public String content;  
  
    public static List<Item> ITEMS = new ArrayList<Item>();  
    static  
    {  
        // Add 6 sample items.  
        addItem(new Item("1", "Item 1"));  
        addItem(new Item("2", "Item 2"));  
        addItem(new Item("3", "Item 3"));  
        addItem(new Item("4", "Item 4"));  
        addItem(new Item("5", "Item 5"));  
        addItem(new Item("6", "Item 6"));  
    }  
  
    private static void addItem(Item item)  
    {  
        ITEMS.add(item);  
    }  
  
    public Item(String id, String content)  
    {  
        this.id = id;  
        this.content = content;  
    }  
  
    @Override  
    public String toString()  
    {  
        return content;  
    }  
}  
[java] view plaincopy在CODE上查看代码片派生到我的代码片
package com.angeldevil.eventbusdemo;  
  
import android.os.Bundle;  
import android.support.v4.app.ListFragment;  
import android.view.View;  
import android.widget.ArrayAdapter;  
import android.widget.ListView;  
  
import com.angeldevil.eventbusdemo.Event.ItemListEvent;  
  
import de.greenrobot.event.EventBus;  
  
public class ItemListFragment extends ListFragment  
{  
  
    @Override  
    public void onCreate(Bundle savedInstanceState)  
    {  
        super.onCreate(savedInstanceState);  
        // Register  
        EventBus.getDefault().register(this);  
    }  
  
    @Override  
    public void onDestroy()  
    {  
        super.onDestroy();  
        // Unregister  
        EventBus.getDefault().unregister(this);  
    }  
  
    @Override  
    public void onViewCreated(View view, Bundle savedInstanceState)  
    {  
        super.onViewCreated(view, savedInstanceState);  
        // 开启线程加载列表  
        new Thread()  
        {  
            public void run()  
            {  
                try  
                {  
                    Thread.sleep(2000); // 模拟延时  
                    // 发布事件，在后台线程发的事件  
                    EventBus.getDefault().post(new ItemListEvent(Item.ITEMS));  
                } catch (InterruptedException e)  
                {  
                    e.printStackTrace();  
                }  
            };  
        }.start();  
    }  
  
    public void onEventMainThread(ItemListEvent event)  
    {  
        setListAdapter(new ArrayAdapter<Item>(getActivity(),  
                android.R.layout.simple_list_item_activated_1,  
                android.R.id.text1, event.getItems()));  
    }  
  
    @Override  
    public void onListItemClick(ListView listView, View view, int position,  
            long id)  
    {  
        super.onListItemClick(listView, view, position, id);  
        EventBus.getDefault().post(getListView().getItemAtPosition(position));  
    }  
  
}  
ItemListFragment里面在onCreate里面进行了事件的订阅，onDestroy里面进行了事件的取消；onViewCreated中我们模拟了一个子线程去网络加载数据，获取成功后我们调用
了EventBus.getDefault().post(new ItemListEvent(Item.ITEMS));发布了一个事件；
onListItemClick则是ListView的点击事件，我们调用了EventBus.getDefault().post(getListView().getItemAtPosition(position));去发布一个事件，
getListView().getItemAtPosition(position)的类型为Item类型；
细心的你一定发现了一些诡异的事，直接new Thread()获取到数据以后，竟然没有使用handler；我们界面竟然发生了变化，那么List是何时绑定的数据？
仔细看下代码，发现这个方法：
public void onEventMainThread(ItemListEvent event)
	{
		setListAdapter(new ArrayAdapter<Item>(getActivity(),
				android.R.layout.simple_list_item_activated_1,
				android.R.id.text1, event.getItems()));
	}
应该是这个方法为List绑定的数据。那么这个方法是怎么被调用的呢？
现在就可以细谈订阅事件与发布事件了：
如果方法名以onEvent开头，则代表要订阅一个事件，MainThread意思，这个方法最终要在UI线程执行；当事件发布的时候，这个方法就会被执行。
那么这个事件什么时候发布呢？
我们的onEventMainThread触发时机应该在new Thread()执行完成之后，可以看到子线程执行完成之后，执行了EventBus.getDefault().post(new ItemListEvent(Item.ITEMS));
意味着发布了一个事件，当这个事件发布，我们的onEventMainThread就执行了，那么二者的关联关系是什么呢？
其实和参数的类型，我们onEventMainThread需要接收一个ItemListEvent ，我们也发布了一个ItemListEvent的实例。
现在我们完整的理一下：
在onCreate里面执行	EventBus.getDefault().register(this);意思是让EventBus扫描当前类，把所有onEvent开头的方法记录下来，如何记录呢？使用Map，Key为方法的参数类型，Value中包含我们的方法。
这样在onCreate执行完成以后，我们的onEventMainThread就已经以键值对的方式被存储到EventBus中了。
然后当子线程执行完毕，调用EventBus.getDefault().post(new ItemListEvent(Item.ITEMS))时，EventBus会根据post中实参的类型，去Map中查找对于的方法，于是找到了我们的onEventMainThread，最终调用反射去执行我们的方法。
现在应该明白了，整个运行的流程了；那么没有接口却能发生回调应该也能解释了。
现在我们在看看代码，当Item点击的时候EventBus.getDefault().post(getListView().getItemAtPosition(position));我们同样发布了一个事件，参数为Item；这个事件是为了让详细信息的Fragment去更新数据，不用说，按照上面的推测，详细信息的Fragment里面一个有个这样的方法：	public void onEventMainThread(Item item) ； 是不是呢？我们去看看。
3、ItemDetailFragment
[java] view plaincopy在CODE上查看代码片派生到我的代码片
package com.angeldevil.eventbusdemo;  
  
import android.os.Bundle;  
import android.support.v4.app.Fragment;  
import android.view.LayoutInflater;  
import android.view.View;  
import android.view.ViewGroup;  
import android.widget.TextView;  
import de.greenrobot.event.EventBus;  
  
public class ItemDetailFragment extends Fragment  
{  
  
    private TextView tvDetail;  
  
    @Override  
    public void onCreate(Bundle savedInstanceState)  
    {  
        super.onCreate(savedInstanceState);  
        // register  
        EventBus.getDefault().register(this);  
    }  
  
    @Override  
    public void onDestroy()  
    {  
        super.onDestroy();  
        // Unregister  
        EventBus.getDefault().unregister(this);  
    }  
  
    /** List点击时会发送些事件，接收到事件后更新详情 */  
    public void onEventMainThread(Item item)  
    {  
        if (item != null)  
            tvDetail.setText(item.content);  
    }  
  
    @Override  
    public View onCreateView(LayoutInflater inflater, ViewGroup container,  
            Bundle savedInstanceState)  
    {  
        View rootView = inflater.inflate(R.layout.fragment_item_detail,  
                container, false);  
        tvDetail = (TextView) rootView.findViewById(R.id.item_detail);  
        return rootView;  
    }  
}  

果然不出我们的所料，真的存在onEventMainThread(Item item)的方法。当然了，必须在onCreate里面首先书写EventBus.getDefault().register(this);让EventBus扫描再说。
那么这个Fragment的流程就是：onCreate时，EventBus扫描当前类，将onEventMainThread以键值对的形式进行存储，键为Item.class ，值为包含该方法的对象。
然后当ItemListFragment中Item被点击时，发布了一个事件：EventBus.getDefault().post(getListView().getItemAtPosition(position));实参的类型恰好是Item，于是触发我们的
onEventMainThread方法，并把Item实参传递进来，我们更新控件。
4、Event
这里还有个事件类：
[java] view plaincopy在CODE上查看代码片派生到我的代码片
package com.angeldevil.eventbusdemo;  
  
import java.util.List;  
  
public class Event  
{  
    /** 列表加载事件 */  
    public static class ItemListEvent  
    {  
        private List<Item> items;  
  
        public ItemListEvent(List<Item> items)  
        {  
            this.items = items;  
        }  
  
        public List<Item> getItems()  
        {  
            return items;  
        }  
    }  
  
}  
ItemListEvent我们在ItemListFragment中使用的，作为的是onEventMainThread中的参数。为什么封装这么个类呢？会在之后的EventBus源码解析中说明。

到此我们的EventBus的初步用法就介绍完毕了。纵观整个代码，木有handler、木有AsynTask，木有接口回调；but，我们像魔术般的实现了我们的需求；来告诉我，什么是耦合，没见到~~~
3、EventBus的ThreadMode
EventBus包含4个ThreadMode：PostThread，MainThread，BackgroundThread，Async
MainThread我们已经不陌生了；我们已经使用过。
具体的用法，极其简单，方法名为：onEventPostThread， onEventMainThread，onEventBackgroundThread，onEventAsync即可
具体什么区别呢？
onEventMainThread代表这个方法会在UI线程执行
onEventPostThread代表这个方法会在当前发布事件的线程执行
BackgroundThread这个方法，如果在非UI线程发布的事件，则直接执行，和发布在同一个线程中。如果在UI线程发布的事件，则加入后台任务队列，使用线程池一个接一个调用。
Async 加入后台任务队列，使用线程池调用，注意没有BackgroundThread中的一个接一个。

4、题外话
大家可以利用EventBus尝试做以下操作：
当接收到某个广播，例如短信，在界面上显示。
开启一个Service，在服务器里面启动一个定时线程，不断更新ActivityUI。
等等...之后，你会发现EventBus的魅力！

声明一下：上面两个Fragment的例子是我在网上down到的，做了简单的修改，虽然很简单，但是很能说明问题。看包名应该是angeldevil写的，在此表示感谢。
顺便吐槽一个官方给的例子，什么性能对比，然后一堆TestCase，不直观。


如果你希望深入理解Eventbus，请看：Android EventBus源码解析 带你深入理解EventBus，相信可以为你解除很多困惑，了解该框架的设计之美。



源码点击下载


我建了一个QQ群，方便大家交流。群号：55032675

----------------------------------------------------------------------------------------------------------
博主部分视频已经上线，如果你不喜欢枯燥的文本，请猛戳（初录，期待您的支持）：
1、高仿微信5.2.1主界面及消息提醒
2、高仿QQ5.0侧滑
3、Android智能机器人“小慕”的实现
4、Android自定义控件 打造Android流式布局和热门标签











顶
48
 
踩
3
上一篇Android 实战美女拼图游戏 你能坚持到第几关
下一篇Android EventBus源码解析 带你深入理解EventBus
我的同类文章
【Android github 控件】（9）  【android 进阶之路】（61）
•Android base-adapter-helper 源码分析与扩展
•Android EventBus源码解析 带你深入理解EventBus
•Android PullToRefresh （ListView GridView 下拉刷新） 使用详解
•SwipeListView 详解 实现微信，QQ等滑动删除效果
•Android 省市县 三级联动（android-wheel的使用）
•Android 框架炼成 教你如何写组件间通信框架EventBus
•Android ORMLite 框架的入门用法
•Android SlidingMenu 使用详解
•Android Volley 之自定义Request
主题推荐android github java html 发布 界面 网络 需求
猜你在找
威哥最新Android开发课程【核心组件】Android开发—NfcAndroid开源项目实践之UI篇Android实战项目—扣丁音乐播放器“攒课”课题3：安卓编译与开发、Linux内核及驱动
你可能没听过的 Java 8 中的 10 个特性你可能没听过的 Java 8 中的 10 个特性Android EventBus实战Android实战-初探EventBusAndroid实战简易教程五十九EventBus小实例-传值控制其他页控件显示

查看评论
65楼 suloveling3天前 16:54发表 [回复] 想问一下，用Fragment实现接口应该怎么弄？求解
64楼 weiph02015-12-28 16:51发表 [回复] 好东西 不过也不是一定要用它
63楼 yanzhiweix2015-12-13 15:37发表 [回复] 感谢大神分享，看懂了，非常方便啊
62楼 cylcly2015-12-08 09:57发表 [回复] 和广播有什么区别呢？
61楼 softwindy_brother2015-11-18 16:47发表 [回复] ListFragment中，onItemClick中发布的item是发布到哪里去了？在ItemDetailFragment中并没有发布任何东西，怎么扫描出数据来了？不是说EventBus只扫描当前类吗？
60楼 yayun05162015-09-08 14:59发表 [回复] 不错，也请大家关注我的博客，哈哈
59楼 wfyeshi2015-08-27 16:57发表 [回复] Service，在服务器里面启动一个定时线程？EventBus 如何实现定时线程？
58楼 kaishus2015-08-26 14:28发表 [回复] 今天试了下EventBus，发现onEventMainThread不一定运行在主线程，通过打印线程ID，发现在哪个线程发送post消息，onEventMainThread就在哪个线程运行，这样岂不是无意义？不能在线程间发送消息。使用的是最新的3.0的beta1的jar包。
57楼 C-worker2015-08-25 15:51发表 [回复] 非常感谢~。
56楼 newxinshou2015-08-13 11:49发表 [回复] 对于我们新手来说，要理解这样一个机制还真是挺难的，要用上更是无从下手，但最近项目却是碰到了这个问题，看了鸿洋大哥的剖析，虽然还是不是很理解，但起码可以有方向继续研究了，谢谢分享！
55楼 wv1124062015-08-11 19:46发表 [回复] 一个activity中有多个Fragment就不能通信了,只有一个Fragment会收到消息,其实不会收到消息,是activity中register和unregister的.有没有解决办法?
54楼 u0105775072015-07-27 16:49发表 [回复] 看了几篇博文，非常赞
53楼 walfud2015-07-23 12:12发表 [回复] /**
* Subscriber will be called in a background thread. If posting thread is not the main thread, event handler methods
* will be called directly in the posting thread. If the posting thread is the main thread, EventBus uses a single
* background thread, that will deliver all its events sequentially. Event handlers using this mode should try to
* return quickly to avoid blocking the background thread.
*/
BackgroundThread,

这个模式下, 如果 post 在主线程, 那么它将会在一个固定的单一线程中执行所有被 post 的操作, 而非线程池.
52楼 酒_剑仙2015-07-15 09:40发表 [回复] 顶
51楼 yxnne2015-06-18 00:08发表 [回复] 原来您是慕课网上的hyman！！！膜拜！Re: sinat_265016572015-06-18 11:35发表 [回复] 回复yxnne：你怎么知道(⊙⊙?)Re: yxnne2015-06-18 14:02发表 [回复] 回复sinat_26501657：看头像
50楼 攻城师sloop2015-06-17 03:23发表 [回复] 我也在跟着鸿洋大大学习EventBus相关内容，fork了一个仓库，准备将里面的部分说明和核心内容翻译一下，想看汉化的说明或者想贡献一份力量请看这里： https://github.com/GcsSloop/EventBus
49楼 JisamWu2015-06-03 22:37发表 [回复] 楼主是如何把EventBus这个Library 导入到Android studio的？
48楼 G_Zoom2015-05-09 14:55发表 [回复] 欣赏博主这种尊重他人劳动成果的行为，赞一个
47楼 soujiro2015-04-24 19:55发表 [回复] 博主 你好

为什么封装ItemListEvent这么个类呢？

我在你的后一篇博文中没找到答案，还请赐教~谢谢！Re: 攻城师sloop2015-06-17 03:24发表 [回复] 回复soujiro：关于为何封装ItemListEvent根据个人推测应该是命名规范需要，在发布或者接收事件时传递的参数后缀应该均为Event。
46楼 soujiro2015-04-24 19:56发表 [回复] 博主 你好

为什么封装ItemListEvent这么个类呢？

我在你的后一篇博文中没找到答案，还请赐教~谢谢！
45楼 soujiro2015-04-24 19:55发表 [回复] 博主 你好

为什么封装ItemListEvent这么个类呢？

我在你的后一篇博文中没找到答案，还请赐教~谢谢！
44楼 JerryloveEmily2015-04-23 14:04发表 [回复] 翔哥 原谅我现在才来看 EventBus， simple哥也有个框架叫 AndroidEventBus感觉会比原始的EventBus更灵活，对于事件的定义自由度更高。
43楼 小小蛤蟆2015-04-17 16:31发表 [回复] 需要好好琢磨下杨总的博客才能略懂一点儿
42楼 翔特2015-03-24 19:46发表 [回复] 请问下从github上下载的eventbus怎么使用啊，导入出现！号
。。
41楼 limengwe2015-03-13 16:30发表 [回复] 一个订阅者 有多个实例的情况下，发布者怎么指定哪个实例来接收呢
40楼 易水南风2015-03-09 14:19发表 [回复] EventBus.getDefault().post方法有没有和某个类关联呢？如果没有的话如果不同的类有方法onEventMainThread且参数类型相同怎么办？
39楼 魔法公主2015-03-04 15:44发表 [回复] 膜拜
38楼 a4450121002015-02-11 01:07发表 [回复] 看到了，不好意思
37楼 a4450121002015-02-11 01:05发表 [回复] 博主我不知道在什么情况下用，您能说说吗？感激不尽
36楼 A107140742015-01-06 16:04发表 [回复] 给我感觉就一个单例，里面有一张记录表，每一项就是类名和该类里的OnEvent方法，当post某个事件的时候，到记录表了查找然后反射执行
35楼 福临天下2014-12-30 14:11发表 [回复] 多个activity通过service的socket和远程的server通讯，能用EventBus吗？
34楼 杨迈19492014-11-25 15:05发表 [回复] 支持视频
33楼 _LittleMing2014-11-23 21:56发表 [回复] 实质上还是观察者模式，把实现接口的回调方式改成了反射。
32楼 lvzhongyi2014-11-20 17:37发表 [回复] 崇拜之至，高手就是高手
31楼 2000叔叔2014-11-18 16:13发表 [回复] 看了好多篇，你这里简直是宝库！！！
30楼 Yao_Qinwei2014-11-14 13:15发表 [回复] 不过，用来做Service和Activity的交互到时挺好的，省了很多事
29楼 Yao_Qinwei2014-11-14 13:11发表 [回复] 其实看完你的文章，以算是对这个库非常了解了，但实际上用起来还在想比较适用于哪些场景，因为有的场景即便是可以用，也可能不必要使用这样的一种方式，反而会麻烦，楼主你最近使用这个库了吗，你的使用场景有哪些？
28楼 Yao_Qinwei2014-11-14 12:58发表 [回复] 引用“lmj623565791”的评论：
回复CsL664867596：貌似较早版本担心注解查询影响性能，把注解查询...

对，我也用到了很多比较好的库，但发现好多都是用注解，我正担心会不会损耗我的速度呢，目前我用的ORMLite、Gson都是以注解的方式来的，本来还想用个注入的库，但大多数也是都是注解，就怕影响速度，所以没用，对于这点你怎么看？为什么比较流行的库都用注解？难道现在注解影响已经很小了吗？是因为Android内存上去了吗？Re: 鸿洋_2014-11-15 12:13发表 [回复] 回复Yao_Qinwei：其实注解某些时候可以靠命名规范来约束，Eventbus就这么干了，而反射调用方法基本是大多框架必须有的，不然它也没办法运行~~个人而言，我觉得反射调用方法的性能，我不在乎~~~以前不是有句话叫做，无反射无任何框架么~
27楼 逍遥灬无风2014-11-12 14:53发表 [回复] 感觉好像安卓的广播。。
26楼 peerless20122014-11-12 13:19发表 [回复] 如果是A负责获取数据，B和C都是显示的Fragment，并且B和C中都有个方法名相同、参数相同的方法，却又不需要同时调用这两个方法，只调用其中的某一个方法，有办法区分？Re: 鸿洋_2014-11-12 13:42发表 [回复] 回复peerless2012：这个问题问得好，如果不做处理的确是都会调用的，所以你仔细看下上面的代码，有个事件类，它的作用是不是瞬间体现出来了~Re: 得沉得住气2016-01-11 21:01发表 [回复] 回复lmj623565791：那如果A类是专门用来获取网络内容的，始终返回String类型的，这样的话该如何区分呢？Re: peerless20122014-11-12 14:40发表 [回复] 回复lmj623565791： 上述情况我实验过了，B和C中的方法都会被调用。
并且我还测试了另外一种情况，第一个Activity跳转到第二个Activity，第二个Activity中也有和B和C中相同的方法，当事件 被触发以后，这三个中的方法都被调用了，调用的顺序默认是注册的顺序（B -> C->Activity2 ）。
另外这些方法在代码混淆的时候也是不能混淆的吧
25楼 98ki2014-11-12 09:45发表 [回复] 传统的作法中
b、在目录的Fragment中提供一个接口，然后详细信息面板去注册这个接口，当发生点击时，去回调这个接口，让详细信息面板发生改变。
是说不用handler就可以解决，a和b是两种方法？还是 a和b是一种方式的过程？Re: 鸿洋_2014-11-12 10:08发表 [回复] 回复zhangpengyu321：a是网络加载数据，然后UI上显示，需要handler;
b是Item点击，操作本身就是UI线程，无需handler，接口回调直接更新就行。
24楼 我是东方谁是不败2014-11-11 14:03发表 [回复] 还是觉得直接用Activity实现Fragment提供的接口来的简单明了
23楼 HELLO_CSL2014-11-10 10:29发表 [回复] 其实如果利用到了反射，会不会带来性能上的损耗？Re: 鸿洋_2014-11-10 12:37发表 [回复] 回复CsL664867596：貌似较早版本担心注解查询影响性能，把注解查询改成了命名规范，即规定onEvent开头；反射在当下，性能损耗已经很小了。
22楼 x_l_g2014-11-10 09:53发表 [回复] 好久没逛，又多了这么多号东西啊
21楼 NapoleonBai2014-11-10 08:37发表 [回复] 鸿洋哥,请问你演示图片中有个demo,其上的icon上加了一个消息提醒,这是怎么实现的呢?还望指教一二Re: 鸿洋_2014-11-10 12:39发表 [回复] 回复NapoleonBai：好眼力，stackoverflow上搜索下 ：badge on icon 。
20楼 快到碗里莱2014-11-08 22:56发表 [回复] 谢谢分享！努力学习！
19楼 小妖森2014-11-08 10:43发表 [回复] 要是有多个一样的方法且参数也一样的咋办？Re: 鸿洋_2014-11-08 13:21发表 [回复] 回复u011367679：一个类里面允许你这么写么~
18楼 KrocLin2014-11-08 00:18发表 [回复] mark
17楼 soledadzz2014-11-07 17:09发表 [回复] 您的文章已被推荐到CSDN首页，感谢您的分享。
16楼 sishenyihuba2014-11-06 16:27发表 [回复] 现在的面试都这么困难啦？
15楼 wl00739212014-11-06 11:34发表 [回复] 有几个疑问:
1，回调方法名就是那几个固定的吗？,这个map key可以是多个参数吗？如果可以的话，是否可以使用方法重载？
2，总线没介绍，是不是就是它让方法的回调跨越了线程和类？Re: 鸿洋_2014-11-06 14:27发表 [回复] 回复wl0073921：回调方法名就这几个固定的，且方法的形参只能有一个，重载是java的特性这肯定可以；关于总线，只是这么叫的，因为它完成了事件的传递。再详细的，接下来会写的。Re: 小贝费摩斯2015-03-03 17:58发表 [回复] 回复lmj623565791：貌似方法名 不是固定的啊。。。 register有个三个参数的方法，第二个参数应该可以自定义方法名的
14楼 志在愚乐2014-11-06 09:47发表 [回复] 支持
13楼 疯狂小强2014-11-06 09:44发表 [回复] 非常不错的框架.Re: 不能停止前进2014-11-14 13:00发表 [回复] 回复tangnengwu：叼，跟着大哥有肉吃，Amazing！
12楼 哇T_T噻2014-11-06 09:37发表 [回复] 鸿洋牛逼，今日无福利
11楼 infobyme2014-11-06 09:09发表 [回复] 最近刚刚才研究了下子
10楼 ApkCore2014-11-06 00:05发表 [回复] 鸿洋，我感觉这玩意使用是不是有观察者模式的影子，我对设计模式不是很了解，求解Re: 鸿洋_2014-11-06 00:36发表 [回复] 回复ApkCore：其实没有，内部用了个map存了下，post的时候，按照实参从map里面找方法，然后反射调用。
9楼 ApkCore2014-11-06 00:05发表 [回复] 鸿洋，我感觉这玩意使用是不是有观察者模式的影子，我对设计模式不是很了解，求解
8楼 LiChong8809112014-11-05 22:20发表 [回复] 除了Fragment间的交互，能不能在多穷举些eventbus的使用场景啊，还是怎么使用清楚了，但是还缺个最佳实践啊，是不是Re: 鸿洋_2014-11-06 00:34发表 [回复] 回复LiChong880911：看题外话，理论上任何组件间交互都可以，0耦合；Re: 笨笨的菜鸟2015-02-23 12:32发表 [回复] 回复lmj623565791：您好，请问下！这个消息提醒数支持的机型多吗？
7楼 t16231836522014-11-05 21:59发表 [回复] 群里发来贺电
6楼 小灯光环2014-11-05 21:16发表 [回复] 斯……斯国一
5楼 ApkCore2014-11-05 20:48发表 [回复] 滋磁
4楼 lovecluo2014-11-05 19:30发表 [回复] 好文章，看楼主博客学了好多东西。
3楼 Emozioni2014-11-05 18:02发表 [回复] 斯……斯国一
2楼 zxq91332014-11-05 17:46发表 [回复] 斯……斯国一
1楼 ly9855574612014-11-05 17:24发表 [回复] 一曲肝肠断，天涯何处觅知音
发表评论
用 户 名：
q178266871
评论内容：
插入代码

  
* 以上用户言论只代表其个人观点，不代表CSDN网站的观点或立场
核心技术类目
全部主题 Hadoop AWS 移动游戏 Java Android iOS Swift 智能硬件 Docker OpenStack VPN Spark ERP IE10 Eclipse CRM JavaScript 数据库 Ubuntu NFC WAP jQuery BI HTML5 Spring Apache .NET API HTML SDK IIS Fedora XML LBS Unity Splashtop UML components Windows Mobile Rails QEMU KDE Cassandra CloudStack FTC coremail OPhone  CouchBase 云计算 iOS6 Rackspace  Web App SpringSide Maemo Compuware 大数据 aptech Perl Tornado Ruby Hibernate ThinkPHP HBase Pure Solr Angular Cloud Foundry Redis Scala Django Bootstrap
个人资料
访问我的空间  
鸿洋_
 
 5  2  1
访问：5494994次
积分：34925
等级： 
排名：第67名
原创：175篇转载：0篇译文：6篇评论：8357条
我的微信公众号
长期为您推荐优秀博文、开源项目、视频等，进入还有好玩的等着你，欢迎扫一扫。 
联系方式
新动态
 
QQ群：
429757068
264950424
463081660
请勿重复加群，Thx
文章分类
【Android 5.x】(8)
【Android 精彩案例】(35)
【Android 源码解析】(29)
【Android 自定义控件实战】(29)
【Android 自定义控件之起步】(7)
【Android 快速开发】(11)
【Android 原生开发游戏】(3)
【Java 并发专题】(15)
【android 进阶之路】(62)
【Java 设计模式】(10)
【Android 百度地图】(4)
【html5 css3精彩案例】(14)
【Android github 控件】(10)
【Android 基础】(16)
【Javascript 】(9)
【rabbitMQ 用法】(5)
友情链接
郭霖的博客
夏安明的博客
任玉刚的博客
敬佩的孔老师
foruok的订阅号程序视界
泡在网上的日子
我的微博

博客专栏
	HTML5 & CSS3 实战
文章：11篇
阅读：88049
	设计模式融入生活
文章：10篇
阅读：51722
	Android 精彩案例
文章：67篇
阅读：2482633
阅读排行
Android Https相关完全解析 当OkHttp遇到Https(1480397)
Android Fragment 真正的完全解析（上）(285029)
Android Fragment 真正的完全解析（下）(120366)
Android RecyclerView 使用完全解析 体验艺术般的控件(119990)
Android 属性动画（Property Animation） 完全解析 （上）(106665)
Android 自定义View (一)(91186)
Android OkHttp完全解析 是时候来了解OkHttp了(75685)
Android 自定义 HorizontalScrollView 打造再多图片（控件）也不怕 OOM 的横向滑动效果(73043)
Android项目Tab类型主界面大总结 Fragment+TabPageIndicator+ViewPager(68573)
Android 自定义RecyclerView 实现真正的Gallery效果(68175)
文章存档
2015年12月(1)
2015年11月(2)
2015年10月(1)
2015年09月(3)
2015年08月(4)
展开
最新评论
Android DrawerLayout 高仿QQ5.2双向侧滑菜单
super_mt: 大神，给跪了
Android 高仿 QQ5.0 侧滑菜单效果 自定义控件来袭
lvdy: 55032675 楼主QQ群怎么不允许加入呢。245501634@qq.com 给个源码 求分享...
Android 手把手教您自定义ViewGroup（一）
笨笨的菜鸟: 竖直居中排列这样就行啦！ protected void onLayout(boolean chang...
Android DiskLruCache 源码解析 硬盘缓存的绝佳方案
CAI_CASE: 存放一个比较大的数据，约170K无法保存
Android 打造任意层级树形控件 考验你的数据结构和设计
我是丑男我怕谁: @RuanXiaoYu:你好，我可以加你QQ吗？请教个问题
Android 打造任意层级树形控件 考验你的数据结构和设计
我是丑男我怕谁: 返回id是String类型怎么破？
Java 并发专题 ：闭锁 CountDownLatch 之一家人一起吃个饭
huanghaopeng62: @SeraphZXZ:信号量一般与无界队列使用，能够实现有界队列的功能，也可以使用信号量来实现对资源...
Android 自定义控件 轻松实现360软件详情页
hjt497821976: 您好，这个效果不错，但是有一个问题，就是标题如果在StickyNavLayout的外面，高度为50d...
Android BitmapShader 实战 实现圆形、圆角图片
qq_33703877: 加载用XUtils加载的网络图片时，报宽、高不能《0，怎么解决？
Android Context 上下文 你必须知道的一切
zhangjintianyi: 希望博主件一个微信群
公司简介|招贤纳士|广告服务|银行汇款帐号|联系方式|版权声明|法律顾问|问题报告|合作伙伴|论坛反馈
网站客服杂志客服微博客服webmaster@csdn.net400-600-2320|北京创新乐知信息技术有限公司 版权所有|江苏乐知网络技术有限公司 提供商务支持
京 ICP 证 09002463 号|Copyright © 1999-2014, CSDN.NET, All Rights Reserved GongshangLogo
量子统计
