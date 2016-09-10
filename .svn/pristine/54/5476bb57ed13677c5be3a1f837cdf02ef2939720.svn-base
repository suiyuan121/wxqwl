package cn.edu.ntu.jtxy.web.controller.mng.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserManagerController.java, v 0.1 2016年4月25日 上午10:00:55 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "userInfos.htm")
public class UserManageController {
    /**  */
    private static final Logger logger = LoggerFactory.getLogger(UserManageController.class);

    private static final String page   = "mng/userManage/userManage";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("用户管理  doGet");

        return page;
    }

}
