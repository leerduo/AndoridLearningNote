package com.yanb.myapplication;

/**
 * Created by Administrator on 2016/1/28.
 */

/**
 * Originator 用于创建一个备忘录，可以记录，恢复自身的状态 。
 * 同时还可以根据需要决定Memento存储自身哪些内部状态
 */
public class CallofDuty {

    int mCheckPoint = 1;
    int mLifeValue = 100;
    String mWeapon = "沙漠之鹰";

    //play
    void play(){
        System.out.println("玩游戏："+String.format("第%d关",mCheckPoint)+"奋斗杀敌中");
        mLifeValue-=10;
        System.out.println("进度升级了");
        mCheckPoint++;
        System.out.println("到达"+String.format("第%d关",mCheckPoint));
    }

    //quit
    void quit(){
        System.out.println("-----------------");
        System.out.println("退出前的游戏属性"+toString());
        System.out.println("退出游戏");
        System.out.println("-----------------");
    }

    /**
     * create 备忘录
     */
    Memoto createMemot(){
        Memoto memoto=new Memoto();
        memoto.mCheckPoint=mCheckPoint;
        memoto.mLifeValue=mLifeValue;
        memoto.mWeapon=mWeapon;
        return  memoto;
    }


    void restore(Memoto memoto){
        this.mCheckPoint= memoto.mCheckPoint;
        this.mLifeValue= memoto.mCheckPoint;
        this.mWeapon= memoto.mWeapon;
    }

    @Override
    public String toString() {
        return "CallofDuty{" +
                "mCheckPoint=" + mCheckPoint +
                ", mLifeValue=" + mLifeValue +
                ", mWeapon='" + mWeapon + '\'' +
                '}';
    }
}
