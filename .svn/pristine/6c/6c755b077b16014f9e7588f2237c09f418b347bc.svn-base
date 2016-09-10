package cn.edu.ntu.jtxy.web.controller.wx;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.web.SystemConstants;

/**
 * 用户信息
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoController.java, v 0.1 2016年4月25日 上午11:12:40 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "userInfo.htm")
public class UserInfoController implements SystemConstants {
    /**  */
    private static final Logger logger        = LoggerFactory.getLogger(UserInfoController.class);

    private static final String page_userInfo = "userInfo";

    @Autowired
    private UserInfoRepository  userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map, String openId) {
        logger.info("绑定用户 doGet   openId={},nickName={}", openId);

        //        UserInfo userInfo = OperationContex.getCurrentuserinfo();

        return page_userInfo;
    }

}
