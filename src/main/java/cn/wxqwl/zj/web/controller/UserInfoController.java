package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.web.SystemConstants;

@Controller
@RequestMapping(value = "userInfo.htm")
public class UserInfoController implements SystemConstants {
    /**  */

    private static Logger logger = LoggerFactory.getLogger(UserInfoController.class);

    private static final String userInfoPage = "userInfo";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("用户信息  doGet");
        return userInfoPage;
    }

}
