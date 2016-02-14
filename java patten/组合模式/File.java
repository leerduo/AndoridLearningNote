package com.yanb.myapplication;

import java.util.List;

/**
 * Created by Administrator on 2016/2/14.
 */
public class File extends Dir {
    public File(String name) {
        super(name);
    }

    @Override
    void addDir(Dir dir) {
        throw new UnsupportedOperationException("文件对象不支持改操作");
    }

    @Override
    void removeDir(Dir dir) {
        throw new UnsupportedOperationException("文件对象不支持改操作");
    }

    @Override
    void clear() {
        throw new UnsupportedOperationException("文件对象不支持改操作");
    }

    @Override
    List<Dir> getFiles() {
        throw new UnsupportedOperationException("文件对象不支持改操作");
    }

    @Override
    void print() {
        System.out.println(getName());
    }
}
