package com.itheima.mobilesafe.utils;

import android.os.Handler;
import android.os.Message;

/**
 * 模板设计模式
 * @author yanbinadmin
 *
 */
public abstract class MyAsyncTask {
	protected static final int DO_PRE_EXECUTE = 0;
	protected static final int DO_Post_EXECUTE = 1;
	private Handler handler=new Handler(){
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case DO_PRE_EXECUTE:
				onPreExecute();
				break;
			case DO_Post_EXECUTE:
				onPostExecute();
				break;
			}
		};
	};
	/**
	 * Runs on the UI thread after doInBackground 在子线程之后执行的任务
	 */
	public abstract void onPostExecute();
	/**
	 * run in UI thread  在子线程之前执行的任务 
	 */
	public abstract void onPreExecute();
	/**
	 * run in back thread在子线程中执行的任务
	 */
	public abstract void doInBackground();
	/**
	 * 
	 */
	public void execute() {
		onPreExecute();
		new Thread(){
			public void run() {
			/*	Message msg=Message.obtain();
				msg.what=DO_PRE_EXECUTE;
				handler.sendMessage(msg);*/
				doInBackground();
				Message	msg=Message.obtain();
				msg.what=DO_Post_EXECUTE;
				handler.sendMessage(msg);
			};
		}.start();
		
	}
}
