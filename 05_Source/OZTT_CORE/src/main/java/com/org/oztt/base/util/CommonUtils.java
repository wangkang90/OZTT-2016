package com.org.oztt.base.util;

import java.io.File;
import java.util.Random;

import org.springframework.util.StringUtils;

public class CommonUtils {

    /**
     * 随机字符串源
     */
    public static final String BASE_NUM = "0123456789";

    /**
     * +号
     */
    public static final String PLUS     = "+";

    /**
     * 或得随机数字
     * 
     * @param length
     * @return String
     */
    public static String getRandomNum(int length) {
        Random random = new Random();
        StringBuffer sbReturn = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(BASE_NUM.length());
            sbReturn.append(BASE_NUM.charAt(number));
        }
        return sbReturn.toString();
    }

    public static String getNumberPhone(String str) {
        if (StringUtils.isEmpty(str))
            return "";
        return str.replace(PLUS, "");
    }
    
    /**
     * 删除文件
     * @param filePath
     */
    public static void deleteFile(String filePath) {
        File file = new File(filePath);
        if (file.exists() && file.isFile()) {
            file.delete();
        }
    }
    
    /**
     * 将零时文件夹里面的文件复制到文件服务器中
     * @param filePath
     */
    public static void saveFile(String filePath) {
        
    }
}
