/**
 * Witontek.com.
 * Copyright (c) 2012-2015 All Rights Reserved.
 */
package cn.edu.ntu.jtxy.util;

import java.util.Date;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

/**
 * 
 * @author song.li@witontek.com
 * @version $Id: IdentityCardUtil.java, v 0.1 2015年11月12日 下午3:06:38 song.li@witontek.com Exp $
 */
public class IdCardUtil {

    /**  */
    private static final int    ID_NO_OLD          = 15;

    private static final int    ID_NO_NEW          = 18;

    //15位身份证正则表达式
    private static final String REGEX_INDENTITY_15 = "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$";

    //18位身份证正则表达式 http://blog.sina.com.cn/s/blog_491997ee0100avd2.html
    private static final String REGEX_INDENTITY_18 = "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}(\\d|X|x)?$";

    /**
     * 
     * 校验身份证
     * @return
     */
    public static boolean isIdCardNo(String no) {
        boolean b = false;
        Pattern pattern_15 = Pattern.compile(REGEX_INDENTITY_15);
        Pattern pattern_18 = Pattern.compile(REGEX_INDENTITY_18);
        b = (pattern_15.matcher(no).matches() || pattern_18.matcher(no).matches());
        return b;
    }

    /**
     * 1 代表男； 0 代表女
     * 
     * @param idNo
     * @return
     */
    public static int getSexFormIdNo(String idNo) {
        if (StringUtils.length(idNo) == ID_NO_OLD) {
            Pattern pattern_15 = Pattern.compile(REGEX_INDENTITY_15);
            if (pattern_15.matcher(idNo).matches()) {
                return Integer.parseInt(StringUtils.substring(idNo, -1)) % 2;
            }
        }
        if (StringUtils.length(idNo) == ID_NO_NEW) {
            Pattern pattern_18 = Pattern.compile(REGEX_INDENTITY_18);
            if (pattern_18.matcher(idNo).matches()) {
                return Integer.parseInt(StringUtils.substring(idNo, -2, -1)) % 2;
            }
        }
        return -1;
    }

    /**
     * 获取身份证的出生年月
     * 
     * @param idNo
     * @return
     */
    public static Date getBirthFormIdNo(String idNo) {
        if (StringUtils.length(idNo) == ID_NO_OLD) {
            Pattern pattern_15 = Pattern.compile(REGEX_INDENTITY_15);
            if (pattern_15.matcher(idNo).matches()) {
                return DateUtil.parseDateNoTime("19" + StringUtils.substring(idNo, 6, 12));
            }
        }
        if (StringUtils.length(idNo) == ID_NO_NEW) {
            Pattern pattern_18 = Pattern.compile(REGEX_INDENTITY_18);
            if (pattern_18.matcher(idNo).matches()) {
                return DateUtil.parseDateNoTime(StringUtils.substring(idNo, 6, 14));
            }
        }
        return null;
    }

}
