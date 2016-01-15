Android 判断一个点是否在封闭的Path内或不规则的图形内
标签： androidpath图形判断点在path范围内判断点在不规则图形内
2015-11-11 17:47 172人阅读 评论(0) 收藏 举报
 分类： android（22）  j2ee（8）  
最近在写画板程序，要判断一个点在一个闭合的path内或者是一个不规则的图形内，这个可不好解决网上查了一堆有算法云云的，直到看到一个大神的帖子 其实可以相当的简单几句话的是 核心代码：

[java] view plaincopy
//------关键部分 判断点是否在 一个闭合的path内--------//  
            if(event.getAction()==MotionEvent.ACTION_DOWN){  
                //构造一个区域对象，左闭右开的。    
                RectF r=new RectF();    
                //计算控制点的边界    
                mPath.computeBounds(r, true);    
                //设置区域路径和剪辑描述的区域    
                re.setPath(mPath, new Region((int)r.left,(int)r.top,(int)r.right,(int)r.bottom));    
                //判断触摸点是否在封闭的path内 在返回true 不在返回false  
                Log.e("","--判断点是否则范围内----"+re.contains((int)event.getX(), (int)event.getY()));  
              }    

主要是用了 mPath.computeBounds(r, true);来计算边界 产生Region来判断
 全部示例代码：

  

[java] view plaincopy
package com.example.touchtest;  
   
import android.content.Context;  
import android.graphics.Canvas;  
import android.graphics.Paint;  
import android.graphics.Path;  
import android.graphics.RectF;  
import android.graphics.Region;  
import android.util.AttributeSet;  
import android.util.Log;  
import android.view.MotionEvent;  
import android.view.View;   
  
public class TestView extends View{   
     //----绘制轨迹----  
    private float mX;    
    private float mY;     
    private final Paint mGesturePaint = new Paint();    
    private final Path mPath = new Path();    
    //------检测点是否在path内  
    private boolean isDraw=false;  
    Region re=new Region();  
      
    public TestView(Context context, AttributeSet attrs) {  
        super(context, attrs);  
        mGesturePaint.setColor(context.getResources().getColor(android.R.color.holo_green_dark));  
        mGesturePaint.setStyle(Paint.Style.STROKE);   
        mGesturePaint.setStrokeWidth(4.0f);  
    }   
    public TestView(Context context) {  
        super(context);  
        mGesturePaint.setColor(context.getResources().getColor(android.R.color.holo_green_dark));  
        mGesturePaint.setStyle(Paint.Style.STROKE);   
        mGesturePaint.setStrokeWidth(4.0f);  
    }  
      
    @Override  
    protected void onDraw(Canvas canvas) {  
        canvas.drawPath(mPath, mGesturePaint);   
    }   
      
    @Override    
    public boolean onTouchEvent(MotionEvent event)    
    {  
        if(isDraw){  
            //------关键部分 判断点是否在 一个闭合的path内--------//  
            if(event.getAction()==MotionEvent.ACTION_DOWN){  
                //构造一个区域对象，左闭右开的。    
                RectF r=new RectF();    
                //计算控制点的边界    
                mPath.computeBounds(r, true);    
                //设置区域路径和剪辑描述的区域    
                re.setPath(mPath, new Region((int)r.left,(int)r.top,(int)r.right,(int)r.bottom));    
                //在封闭的path内返回true 不在返回false  
                Log.e("","--判断点是否则范围内----"+re.contains((int)event.getX(), (int)event.getY()));  
              }    
             return true;  
          }   
        switch (event.getAction())    
        {    
            case MotionEvent.ACTION_DOWN:     
                  touchDown(event);  
                 break;    
            case MotionEvent.ACTION_MOVE:    
                touchMove(event);    
                break;  
            case MotionEvent.ACTION_UP:   
                mPath.close();   
                isDraw=true;   
                break;  
        }    
        //更新绘制    
        invalidate();    
        return true;   
    }   
      
  //---------------下边是划线部分----------------------------//    
    //手指点下屏幕时调用    
    private void touchDown(MotionEvent event)    
    {     
        //重置绘制路线，即隐藏之前绘制的轨迹    
        mPath.reset();    
        float x = event.getX();    
        float y = event.getY();   
        mX = x;    
        mY = y;      
        mPath.moveTo(x, y);    
    }     
    //手指在屏幕上滑动时调用    
   private void touchMove(MotionEvent event)    
    {    
        final float x = event.getX();    
        final float y = event.getY();     
        final float previousX = mX;    
        final float previousY = mY;     
        final float dx = Math.abs(x - previousX);    
        final float dy = Math.abs(y - previousY);   
        //两点之间的距离大于等于3时，连接连接两点形成直线    
        if (dx >= 3 || dy >= 3)    
        {    
            //两点连成直线    
            mPath.lineTo(x, y);     
            //第二次执行时，第一次结束调用的坐标值将作为第二次调用的初始坐标值    
            mX = x;    
            mY = y;    
        }    
    }    
}  

                                                                               运行
经测试可以很准确的判断 touch触摸点是否在上边绘制的不规则图形内，搞绘图的小伙伴们赶紧拿去开心的玩耍吧！哈哈

总结：技术是个不断积累的过程，对一个平台的熟悉程度决定了你的实现能力和快速解决问题的能力。万能的百度当然可以 但是也要有人去摸索分享出来 大家才能收益，感谢大神的分享精神 原文地址：http://blog.csdn.net/havakey/article/details/6649553 






首先介绍Region类
Region，中文意思即区域的意思，它表示的是canvas图层上的某一块封闭的区域。
[java] view plaincopy
/**构造方法*/  
 public Region()  //创建一个空的区域  
 public Region(Region region) //拷贝一个region的范围  
 public Region(Rect r)  //创建一个矩形的区域  
 public Region(int left, int top, int right, int bottom) //创建一个矩形的区域  
  
/**一系列set方法，这些set方法，和上面构造方法形式差不多*/  
 public void setEmpty() {  
 public boolean set(Region region)   
 public boolean set(Rect r)   
 public boolean set(int left, int top, int right, int bottom)   
 /*往一个Region中添加一个Path只有这种方法，参数clip代表这个整个Region的区域，在在里面裁剪出path范围的区域*/  
 public boolean setPath(Path path, Region clip) //用指定的Path和裁剪范围构建一个区域  
  
/**几个判断方法*/  
public native boolean isEmpty();//判断该区域是否为空  
public native boolean isRect(); //是否是一个矩阵  
public native boolean isComplex();//是否是多个矩阵组合  
  
  
/**一系列的getBound方法，返回一个Region的边界*/  
public Rect getBounds()   
public boolean getBounds(Rect r)   
public Path getBoundaryPath()   
public boolean getBoundaryPath(Path path)   
  
  
/**一系列的判断是否包含某点 和是否相交*/  
public native boolean contains(int x, int y);//是否包含某点  
public boolean quickContains(Rect r)   //是否包含某矩阵  
public native boolean quickContains(int left, int top, int right,  
                                        int bottom) //是否没有包含某矩阵  
 public boolean quickReject(Rect r) //是否没和该矩阵相交  
 public native boolean quickReject(int left, int top, int right, int bottom); //是否没和该矩阵相交  
 public native boolean quickReject(Region rgn);  //是否没和该矩阵相交  
  
/**几个平移变换的方法*/  
public void translate(int dx, int dy)   
public native void translate(int dx, int dy, Region dst);  
public void scale(float scale) //hide  
public native void scale(float scale, Region dst);//hide  
  
  
/**一系列组合的方法*/  
public final boolean union(Rect r)   
public boolean op(Rect r, Op op) {  
public boolean op(int left, int top, int right, int bottom, Op op)   
public boolean op(Region region, Op op)   
public boolean op(Rect rect, Region region, Op op)   