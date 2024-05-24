package com.huike.common.utils;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class LogPrint {

    public static void print(List<String> list,String path){
        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(path,true));
            for (String s : list) {
                bw.write(s);//输出日志
                bw.newLine();//换行
            }
            bw.newLine();//换行
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
