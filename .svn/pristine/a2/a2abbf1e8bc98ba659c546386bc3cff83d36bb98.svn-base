package cn.edu.ntu.jtxy.web.controller.wx;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.component.wx.UserInfoComponent;
import cn.edu.ntu.jtxy.core.component.wx.result.BindResult;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo.StatusEnum;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.util.SessionUtil;
import cn.edu.ntu.jtxy.web.SystemConstants;
import cn.edu.ntu.jtxy.web.controller.wx.form.UserBindForm;
import cn.edu.ntu.jtxy.web.filter.OperationContex;

/**
 * 绑定用户
 * @author {jin.zhang@witontek.com}
 * @version $Id: BindController.java, v 0.1 2016年3月30日 下午3:27:55 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "bind.htm")
public class BindController implements SystemConstants {
    /**  */
    private static final Logger   logger    = LoggerFactory.getLogger(BindController.class);

    private static final String   page_bind = "bind";

    private static final String   page_warn = "http://mp.weixin.qq.com/s?__biz=MzI4NTAzMTg0NQ==&mid=326071422&idx=1&sn=2eefad4b02404cdfd1cad37e7bdc2310#rd";

    @Autowired
    private WeiXinUserRepository  weiXinUserRepository;

    /**  */
    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @Autowired
    private WxClient              wxClient;

    @Autowired
    private UserInfoRepository    userInfoRepository;

    @Autowired
    private UserInfoComponent     userInfoComponent;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map, String openId) {
        logger.info("绑定用户 doGet   openId={},nickName={}", openId);
        UserInfo userInfo = OperationContex.getCurrentuserinfo();
        if (userInfo != null) {
            map.addAttribute("errMsg", "此账户已经绑定，无须再绑定");
        } else {
            map.addAttribute("errMsg", "请填入正确的学号进行绑定!");
        }
        map.addAttribute("openId", openId);
        return page_bind;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(UserBindForm bindForm, HttpServletRequest req, ModelMap map) {
        logger.info("绑定用户 doGet   bindForm={}", bindForm);
        String openId = bindForm.getOpenId();
        String stuNo = bindForm.getStuNo();
        String pageBefore = (String) SessionUtil.get(req, PAGE_SESSION);

        WeiXinUserDo weiXinUserDo = weiXinUserRepository.getByOpenId(openId);
        StudentInfoDo studentInfoDo = studentInfoRepository.getByStuNo(stuNo);

        if (weiXinUserDo == null) {
            logger.info("绑定用户 失败   weiXinUserDo={}", weiXinUserDo);
            return ERROR_PAGE;
        }
        if (studentInfoDo == null) {
            logger.info("绑定用户 失败   weiXinUserDo={},studentInfoDo={}", weiXinUserDo, studentInfoDo);
            map.addAttribute("errMsg", "学号不存在");
            map.addAttribute("openId", openId);
            return page_bind;
        }

        //查看用户是否是可用状态，不能重复绑定
        UserInfoCond userInfoCond = new UserInfoCond();
        userInfoCond.setStuNo(stuNo);
        userInfoCond.setStatus(StatusEnum.ENABLE);
        List<UserInfoDo> userList = userInfoRepository.getByCond(userInfoCond);
        if (!CollectionUtils.isEmpty(userList)) {
            logger.error("此学号已经绑定微信账号，  stuNo={}", stuNo);
            map.addAttribute("openId", openId);
            map.addAttribute("errMsg", "此学号已经绑定微信账号，请先解绑后重试");
            return page_bind;
        }

        BindResult result = userInfoComponent.bind(weiXinUserDo, studentInfoDo);

        if (!result.isSuccess()) {
            if (StringUtils.equals(result.getCode(), ResultCodeEnum.未关注.getCode())) {
                return "redirect:" + page_warn;
            }
            return ERROR_PAGE;
        }

        //绑定成功
        SessionUtil.setUserInfo(req, result.getUserInfo());
        return "redirect:" + pageBefore;
    }

}
