package com.yanb.myapplication;

import java.util.Iterator;
import java.util.List;

/**
 * Created by Administrator on 2016/2/14.
 */
public class Folder extends Dir {
    public Folder(String name) {
        super(name);
    }

    @Override
    void addDir(Dir dir) {
        dirs.add(dir);
    }

    @Override
    void removeDir(Dir dir) {
        dirs.remove(dir);
    }

    @Override
    void clear() {
        dirs.clear();
    }

    @Override
    List<Dir> getFiles() {
      return  dirs;
    }

    @Override
    void print() {
        System.out.println(getName() + "(");
        Iterator<Dir> iterator = dirs.iterator();
        while (iterator.hasNext()){
            Dir dir = iterator.next();
            dir.print();
            if (iterator.hasNext())
                System.out.println(",");
        }
        System.out.println(")");
    }
}
