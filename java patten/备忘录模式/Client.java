package com.yanb.myapplication;

public class Client {
    void main(String args[]) {
        //Originator 用于创建一个备忘录，可以记录，恢复自身的状态 。
        CallofDuty game = new CallofDuty();
        //1打游戏
        game.play();

        // 负责 存储备忘录，不能对备忘录的内容进行操作和访问，只能够将备忘录传递给其他对象。
        Caretaker caretaker = new Caretaker();
        //保存状态 存储备忘录
        caretaker.archive(game.createMemot());
        //
        game.quit();

        CallofDuty newGame = new CallofDuty();
        //恢复自身的状态
        newGame.restore(caretaker.getMemoto());

    }
}