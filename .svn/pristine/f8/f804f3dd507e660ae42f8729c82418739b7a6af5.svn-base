/**
 * Witontek.com.
 * Copyright (c) 2012-2014 All Rights Reserved.
 */
package cn.edu.ntu.jtxy;

import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 
 * @author song.li@witontek.com
 * @version $Id: BaseTest.java, v 0.1 2014年7月17日 下午7:46:47 song.li@witontek.com Exp $
 */
public class BaseTest {
    /**
    * Logger for this class
    */
    protected final Logger     logger = LoggerFactory.getLogger(getClass());

    /**  */
    private ApplicationContext context;

    @Before
    public void setup() {
        try {
            context = new ClassPathXmlApplicationContext("classpath*:/META-INF/spring/ntu-*.xml");

            logger.debug("[{}]setup", BaseTest.class.getName());
            /*logger.info("{}", getContext().getResource("classpath:/META-INF/a b/a.xml").getURI()
            .getPath());*/
        } catch (Exception e) {
            logger.error("", e);
        }

    }

    /**
     * 
     * @return
     */
    public ApplicationContext getContext() {
        return context;
    }

}
