package cn.edu.ntu.jtxy.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Test {

    public static final long    MAX        = 10000L * 10000L * 100L;

    /** 15位uid 格式化 */
    public static final String  UID_FORMAT = "93106%010d";
    private static final Logger logger     = LoggerFactory.getLogger(Test.class);

    @org.junit.Test
    public void tes() {
        logger.info("sss");
        logger.error("sss");
        logger.debug("sss");
    }

    public static void main(String[] args) {
        String s = String.format(UID_FORMAT, 1 % MAX);
        System.out.println(s);
    }
}
