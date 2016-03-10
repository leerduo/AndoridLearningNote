package com.henmao.app.view.custom;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created by Administrator on 2016/3/10.
 */
public class PathView extends View {
    private Path mPath;//路径对象
    Paint mPaint;//画笔对象

    public PathView(Context context, AttributeSet attrs) {
        super(context, attrs);
        /**
         * 实例化画笔 并设置属性
         */
        mPaint=new Paint(Paint.ANTI_ALIAS_FLAG);
        mPaint.setStyle(Paint.Style.STROKE);//描边
        mPaint.setColor(Color.CYAN);

        mPath=new Path();
        //连接到路径点[100,100]

        mPath.moveTo(300, 300);//设置起点

        mPath.lineTo(100, 100);//从原点连接到此路径

        mPath.moveTo(300, 300);//设置起点 2阶贝赛尔曲线
        mPath.quadTo(100, 100, 300, 300);//2阶贝赛尔曲线 控制点 和 终点

//        mPath.                              ;//二阶贝赛尔曲线
      //mPath.cubicTo();      //三阶贝塞尔曲线的方法 前四个参数表示两个控制点，最后两个参数表示终点：
        mPath.close();//形成闭合图形

    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        canvas.drawPath(mPath,mPaint);


    }
}
