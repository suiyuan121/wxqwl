package cn.edu.ntu.jtxy.util.date;

import java.util.Date;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.repository.wx.impl.RefreshTokenRepositoryImpl;
import cn.edu.ntu.jtxy.util.DateUtil;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: DateUtilTest.java, v 0.1 2016年3月22日 下午3:21:10 {jin.zhang@witontek.com} Exp $
 */
public class DateUtilTest {

    private static final Logger logger = LoggerFactory.getLogger(RefreshTokenRepositoryImpl.class);

    @Test
    public void test() {

        Date d = DateUtil.addDays(new Date(), -1);
        logger.info("xxxxxxxr={}", d);
    }

    @Test
    public void test_1() {

        Date d = DateUtil.addHours(new Date(), 1);
        logger.info("xxxxxxxr={}", d);
    }

    @Test
    public void test_2() {

        Date d = DateUtil.addMinute(new Date(), 1);
        logger.info("xxxxxxxr={}", d);
    }

    @Test
    public void test_4() {

        long r = System.currentTimeMillis() / 1000;
        logger.info("xxxxxxxr={}", r);

    }
}
