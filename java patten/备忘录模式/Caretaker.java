package com.yanb.myapplication;

/**用于管理Menoto
 * 负责 存储备忘录，不能对备忘录的内容进行操作和访问，只能够将备忘录传递给其他对象。
 */
public class Caretaker {
    Memoto memoto;
    /**
     * 存储状态
     */
    void archive(Memoto memoto){
        this.memoto=memoto;
    }

    /**
     *获取存档
     */
    public Memoto getMemoto() {
        return memoto;
    }
}