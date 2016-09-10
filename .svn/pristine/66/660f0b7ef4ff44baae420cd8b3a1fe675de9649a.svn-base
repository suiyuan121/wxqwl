package cn.edu.ntu.jtxy.web.controller.mng;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: MenuController.java, v 0.1 2016年3月26日 下午6:44:03 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "menu.htm")
public class MenuController {
    /**  */
    private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

    private static final String page   = "menu";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("跳转菜单  doGet");

        return page;
    }

}
