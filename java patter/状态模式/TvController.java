package org.succlz123.blueboard.view;

/**
 * Created by Administrator on 2016/1/27.
 */
//电视器控制器 类似于Uml图中的Contenxt
public class TvController implements PowerController,TvState{

   TvState mTvState;

    public void setmTvState(TvState mTvState) {
        this.mTvState = mTvState;
    }

    public void powerOff(){
        setmTvState(new PowerOff());
        System.out.println("关机了 ");
    }

    public void powerOn(){
        setmTvState(new PowerOn());
        System.out.println("开机了 ");
    }

    public void nextChannel(){
      mTvState.nextChannel();
    }

    @Override
    public void prevChannel() {
        mTvState.prevChannel();
    }

    @Override
    public void turnUp() {
        mTvState.turnUp();
    }

    @Override
    public void turnDown() {
        mTvState.turnDown();
    }


    public void main(String args[]){
        TvController tvController=new TvController();
        tvController.powerOn();

    }

}
