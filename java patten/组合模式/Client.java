package com.yanb.myapplication;

/**
 * Created by Administrator on 2016/2/14.
 */
public class Client {
    public void main(String args[]){
        //
        Dir diskC=new Folder("c");

        diskC.addDir(new File("ImageYanbin.png"));
        //c盘下有个子目录
        Dir dirWin=new Folder("window");
        dirWin.addDir(new File("window.exe"));
        diskC.addDir(dirWin);

        //打印出文件结构
        diskC.print();
    }
}
