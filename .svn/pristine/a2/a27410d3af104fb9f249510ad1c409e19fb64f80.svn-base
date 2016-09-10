package cn.edu.ntu.jtxy.web.controller.wx;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: HomePageController.java, v 0.1 2016年3月26日 下午7:51:51 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "lottery.htm")
public class LotteryController {
    /**  */
    private static final Logger logger = LoggerFactory.getLogger(LotteryController.class);

    private static final String page   = "lottery";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("抽奖跳转页面  doGet");

        return page;
    }

}
