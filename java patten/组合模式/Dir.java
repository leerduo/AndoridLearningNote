package com.yanb.myapplication;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/2/14.
 */
public abstract class Dir {
    /**
     * 声明一个List存储文件夹下所有元素
     */
    protected List<Dir> dirs=new ArrayList<>();
    private String name;//当前文件或文件夹名

    public Dir(String name){
        this.name=name;
    }
    /**
     * 添加一个文件或文件夹
     * @param dir
     */
    abstract void addDir(Dir dir);
    /**
     * 删除一个文件或文件夹
     * @param dir
     */
    abstract void removeDir(Dir dir);
    /**
     * 清空文件夹下所有元素
     */
    abstract void clear();
    /**
     * 获取文件夹下所有的文件或子文件夹
     */
    abstract List<Dir> getFiles();
    /**
     * 输出文件夹目录结构
     */
    abstract void print();
    /**
     * 获取文件或文件夹名
     */
    public String getName(){
        return  name;
    }

}
