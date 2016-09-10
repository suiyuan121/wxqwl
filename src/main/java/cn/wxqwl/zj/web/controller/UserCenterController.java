package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.web.SystemConstants;

@Controller
@RequestMapping(value = "userCenter.htm")
public class UserCenterController implements SystemConstants {
    /**  */

    private static Logger logger = LoggerFactory.getLogger(UserCenterController.class);

    private static final String userCenterPage = "userCenter";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("用户中心  doGet");
        return userCenterPage;
    }

}
