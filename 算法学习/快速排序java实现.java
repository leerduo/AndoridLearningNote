package com.henmao.app.controller.fragment.main;

/**
 * Created by Administrator on 2016/3/25.
 */
public class QucikSort {
    void qucikSort(int arr[],int l,int r){
        int low=l,high=r;
        int key=arr[low];//key
        while(low<high){
            while(low<high&&arr[high]>=key) high--;//从右向左找比key小的值
            if(low<high) {
                arr[low]=arr[high];//挖坑
                low++;
            }
            while(low<high&&arr[low]<=key) low++;//从左向右找比key大的值
            if(low<high){
                arr[high]=arr[low];//之前被挖的坑填上 出现新坑arr[low]
                high--;
            }
        }
        //循环结束时 i=j
        arr[low]=key;
        qucikSort(arr,l,low-1);
        qucikSort(arr,low+1,r);
    }
}
