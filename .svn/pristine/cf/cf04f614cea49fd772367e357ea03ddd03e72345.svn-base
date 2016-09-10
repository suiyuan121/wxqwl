package cn.edu.ntu.jtxy.web.controller.wx.ajax;

import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.web.SystemConstants;
import cn.edu.ntu.jtxy.web.filter.OperationContex;

/**
 * 幸运转盘得到度数
 * @author {jin.zhang@witontek.com}
 * @version $Id: GetDegreeAjax.java, v 0.1 2016年4月20日 下午9:05:15 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "getdegree.json")
public class GetDegreeAjax implements SystemConstants {
    /**  */
    private static final Logger   logger = LoggerFactory.getLogger(GetDegreeAjax.class);

    @Autowired
    private WeiXinUserRepository  weiXinUserRepository;

    /**  */
    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @Autowired
    private WxClient              wxClient;

    @Autowired
    private UserInfoRepository    userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public void doGet(ModelMap map) {
        logger.info("抽奖得到度数 doGet");
        UserInfo userInfo = OperationContex.getCurrentuserinfo();
        if (userInfo == null) {
            map.addAttribute("errMsg", "fail");
            return;
        }
        int degree = new Random().nextInt(360);
        logger.info("抽奖得到度数    degree={}", degree);
        map.addAttribute("degree", degree);
        map.addAttribute("errMsg", "success");
        return;
    }
}
