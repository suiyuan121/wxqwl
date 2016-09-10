package cn.edu.ntu.jtxy.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 日期工具类
 * @author {jin.zhang@witontek.com}
 * @version $Id: DateUtil.java, v 0.1 2016年3月22日 下午2:41:44 {jin.zhang@witontek.com} Exp $
 */
public class DateUtil {

    private static final Logger logger      = LoggerFactory.getLogger(DateUtil.class);

    public final static String  shortFormat = "yyyyMMdd";

    public final static String  webFormat   = "yyyy-MM-dd";

    public static DateFormat getNewDateFormat(String pattern) {
        DateFormat df = new SimpleDateFormat(pattern);

        df.setLenient(false);
        return df;
    }

    public static Date addDays(Date now, int days) {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.DAY_OF_MONTH, days);
        return c.getTime();
    }

    public static Date addHours(Date now, int hours) {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.HOUR_OF_DAY, hours);
        return c.getTime();
    }

    public static Date addMinute(Date now, int minute) {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.MINUTE, minute);
        return c.getTime();
    }

    /**
     * yyyyMMdd
     * 
     * @param sDate
     * @return
     */
    public static Date parseDateNoTime(String sDate) {
        DateFormat dateFormat = new SimpleDateFormat(shortFormat);

        try {
            if ((sDate == null) || (sDate.length() < shortFormat.length())) {
                throw new ParseException("length too little", 0);
            }
            if (!StringUtils.isNumeric(sDate)) {
                throw new ParseException("not all digit", 0);
            }
            return dateFormat.parse(sDate);
        } catch (ParseException e) {
            logger.error("", e);
            return null;
        }
    }

    public static String getWebTodayString() {
        DateFormat df = getNewDateFormat(webFormat);

        return df.format(new Date());
    }
}
