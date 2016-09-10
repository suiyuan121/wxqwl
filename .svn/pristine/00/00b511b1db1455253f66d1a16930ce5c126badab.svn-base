package cn.edu.ntu.jtxy.util.format;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: FormatTest.java, v 0.1 2016年4月13日 下午4:45:48 {jin.zhang@witontek.com} Exp $
 */
public class FormatTest {
    private static final Logger logger     = LoggerFactory.getLogger(FormatTest.class);
    public static final long    MAX        = 10000L * 10000L * 100L;

    public static final String  UID_FORMAT = "10304%010d";

    @Test
    public void test() {

        //        String s = "10304";
        logger.info("xxxx{}", String.format(UID_FORMAT, 10 % MAX));
    }
}
