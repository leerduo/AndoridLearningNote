package com.yanb.myapplication;

/**
 * Created by Administrator on 2016/1/28.
 */

/**
 * 备忘录类 用于存储original对象的内部状态，并且可以防止original之外的对象访问备忘录
 */
public class Memoto {
    int mCheckPoint;
    int mLifeValue ;
    String mWeapon ;


    @Override
    public String toString() {
        return "Memoto{" +
                "mCheckPoint=" + mCheckPoint +
                ", mLifeValue=" + mLifeValue +
                ", mWeapon='" + mWeapon + '\'' +
                '}';
    }
}
