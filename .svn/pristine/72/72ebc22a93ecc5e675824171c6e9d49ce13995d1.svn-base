package cn.edu.ntu.jtxy.util;

import org.junit.Test;

public class NumUtils {

    @Test
    public void test() {
        int count = 10;
        int pageSize = 10;
        long ret = Math.round(Math.ceil(count * 1.0 / pageSize));
        System.out.println(count * 1.0);
        System.out.println(ret);
    }

    @Test
    public void test_2() {
        int count = 11;
        int pageSize = 10;

        int pageNums = count % pageSize > 0 ? (count / pageSize) + 1 : (count / pageSize);
        System.out.println(pageNums);
    }
}
