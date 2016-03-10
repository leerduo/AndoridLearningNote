package com.henmao.app.view.custom;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

/**
 * 当然你也可以反过来让模拟往杯子里倒水的效果~实现过程非常简单，
 * 说白了就是不断移动二阶曲线的控制点同时不断更改顶部各点的Y坐标，然后不断重绘：
 * Created by succlz123 on 2016/3/10.
 */
public class WaveView extends View {
    private Path mPath;
    private Paint mPaint;

    private int vWidth,vHeight;//控件宽高
    private float ctrX,ctrY;//控制点xy坐标
    private float waveY;//整个wave顶部两端点的Y坐标 该坐标与控制点的Y坐标增减幅一致

    private boolean isInc;//判断控制点是该左移还是右移

    public WaveView(Context context, AttributeSet attrs) {
        super(context, attrs);

        mPaint=new Paint(Paint.ANTI_ALIAS_FLAG);
        mPaint.setColor(0xffa2d6ae);

        mPath=new Path();
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        vWidth=w;
        vHeight=h;

        //计算控制点Y坐标
        waveY=1/8F*vHeight;
        //计算端点Y坐标
        ctrY=-1/16F*vHeight;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        mPath.moveTo(-1 / 4f * vWidth, waveY);//起始点

        mPath.quadTo(ctrX, ctrY, vWidth + 1 / 4f * vWidth, waveY);

        // 围绕控件闭合曲线 画图 便于理解
        mPath.lineTo(vWidth + 1 / 4F * vWidth, vHeight);
        mPath.lineTo(-1 / 4F * vWidth, vHeight);
        mPath.close();


        //不断移动二阶曲线的控制点同时不断更改顶部各点的Y坐标
        //ctrX, ctrY 控制点   waveY  顶部坐标 控制此坐标 形成 水波
        canvas.drawPath(mPath,mPaint);

        /**
         * 当控制点的x坐标大于等于终点x坐标时更改标识值
         */
        if(ctrX>=vWidth + 1 / 4F * vWidth){
            isInc=false;
        }
         /*
         * 当控制点的x坐标小于或等于起点x坐标时更改标识值
         */
        else if (ctrX <= -1 / 4F * vWidth) {
            isInc = true;
        }
        //  根据标识值判断当前的控制点x坐标是该加还是减 不断改变控制点x坐标
        ctrX = isInc ? ctrX + 20 : ctrX - 20;

        /**
         * 通过改变 控制点ctrY和 waveY的坐标 变化绘制的图形 形成水波下降 想不到此思路
         */
        if(ctrY<=vHeight){
            ctrY+=2;
            waveY+=2;
        }

        mPath.reset();

        invalidate();
    }
}
