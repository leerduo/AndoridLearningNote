##http://www.cnblogs.com/yejiurui/p/3413796.html

如何通过Html网页调用本地安卓app？

如何使用html网页和本地app进行传递数据呢？经过研究，发现还是有方法的，总结了一下，大致有一下几种方式

        更新一下吧，这篇日志写于2013年11月，离现在已经很久了，依然很多朋友在查阅。目前应该有更新的技术。大家也去补充一下。另外评论里面有朋友说只有webkit内核的浏览器可以使用，这个我没有去做过验证，大家使用的时候，可以参考一下。

                ---update in 2015.11.13

  

一、通过html页面打开Android本地的app

 

1、首先在编写一个简单的html页面

复制代码
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <title>Insert title here</title>

    </head>

    <body>

        <a href="m://my.com/">打开app</a><br/>

    </body>

</html>
复制代码
2、在Android本地app的配置

复制代码
在AndroidManifest的清单文件里的intent-filte中加入如下元素：
 <intent-filter>
<action android:name="android.intent.action.VIEW" />
                <category android:name="android.intent.category.DEFAULT" />
                <category android:name="android.intent.category.BROWSABLE" />

                <data
                    android:host="my.com" 
                    android:scheme="m" />
</intent-filter>
复制代码
示例截图如下：

image

 

然后使用“手机浏览器”或者“webview”的方式打开这个本地的html网页，点击“打开APP”即可成功开启本地的指定的app

 

二、如何通过这个方法获取网页带过来的数据

 

只能打开就没什么意思了，最重要的是，我们要传递数据，那么怎么去传递数据呢？

我们可以使用上述的方法，把一些数据传给本地app，那么首先我们更改一下网页，代码修改后：

复制代码
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <a href="m://my.com/?arg0=0&arg1=1">打开app</a><br/>
    </body>
</html>
复制代码
（1）.假如你是通过浏览器打开这个网页的，那么获取数据的方式为：

Uri uri = getIntent().getData();  String test1= uri.getQueryParameter("arg0");  String test2= uri.getQueryParameter("arg1");
（2）如果使用webview访问该网页，获取数据的操作为：

复制代码
webView.setWebViewClient(new WebViewClient(){
  @Override
  public boolean shouldOverrideUrlLoading(WebView view, String url) {
      Uri uri=Uri.parse(url);
          if(uri.getScheme().equals("m")&&uri.getHost().equals("my.com")){
              String arg0=uri.getQueryParameter("arg0");
              String arg1=uri.getQueryParameter("arg1");
             
          }else{
              view.loadUrl(url);
          }
      return true;
  }
});
复制代码
如果，这篇博客帮您解决了问题，不妨点击一下右下角的【推荐】。
如果，您希望更容易地发现我的新博客，不妨点击一下【加关注】。
因为，我的热情需要您的肯定和支持！ 