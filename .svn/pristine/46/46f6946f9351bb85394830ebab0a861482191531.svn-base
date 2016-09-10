package cn.edu.ntu.jtxy.web.controller.wx;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.util.SessionUtil;
import cn.edu.ntu.jtxy.web.SystemConstants;
import cn.edu.ntu.jtxy.web.filter.OperationContex;

/**
 * 绑定用户
 * @author {jin.zhang@witontek.com}
 * @version $Id: BindController.java, v 0.1 2016年3月30日 下午3:27:55 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "unBind.htm")
public class UnBindController implements SystemConstants {
    /**  */
    private static final Logger  logger    = LoggerFactory.getLogger(UnBindController.class);

    private static final String  page_bind = "bind";

    @Autowired
    private WeiXinUserRepository weiXinUserRepository;

    @Autowired
    private UserInfoRepository   userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map, HttpServletRequest request) {
        UserInfo userInfo = OperationContex.getCurrentuserinfo();
        logger.info("解绑openId doGet  userInfo={}", userInfo);
        if (userInfo == null) {
            return ERROR_PAGE;
        }
        boolean ret = userInfoRepository.unBindOpenId(userInfo.getOpenId());
        if (!ret) {
            return ERROR_PAGE;
        }
        //清除session
        SessionUtil.removeUserInfo(request);
        map.addAttribute("errMsg", "解绑成功!");
        map.addAttribute("openId", userInfo.getOpenId());
        return page_bind;
    }
}
