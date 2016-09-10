package cn.wxqwl.zj.web.controller;

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

import cn.wxqwl.zj.core.model.UserInfo.UserTypeEnum;
import cn.wxqwl.zj.core.model.UserInfoDo;
import cn.wxqwl.zj.core.model.enums.StatusEnum;
import cn.wxqwl.zj.core.repository.UserInfoConvertor;
import cn.wxqwl.zj.core.repository.UserInfoRepository;
import cn.wxqwl.zj.core.repository.cond.UserInfoCond;
import cn.wxqwl.zj.util.PwdUtils;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.controller.form.RegisterForm;
import cn.wxqwl.zj.web.utils.SessionUtil;

@Controller
@RequestMapping(value = "logon.htm")
public class LogonController implements SystemConstants {
    /**  */

    private static Logger logger = LoggerFactory.getLogger(LogonController.class);

    private static final String logonPage = "logon";

    private static final String userCenterPage = "userCenter";

    @Autowired
    private UserInfoRepository userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("登陆  doGet");
        return logonPage;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(ModelMap modelMap, RegisterForm logonForm, HttpServletRequest request) {
        logger.info("注册 doPost logonForm={}", logonForm);

        String logonName = logonForm.getLogonName();
        String password = logonForm.getPassword();
        String verifyCode = logonForm.getVerifyCode();

        String sessionVerifyCode = (String) SessionUtil.get(request, VERTFY_CODE);
        logger.info("正确的验证码是    sessionVerifyCode={}", sessionVerifyCode);
        if (!StringUtils.equalsIgnoreCase(verifyCode, sessionVerifyCode)) {
            modelMap.addAttribute("errorTips", "验证码错误");
            modelMap.addAttribute("logonForm", logonForm);
            return logonPage;
        }

        UserInfoCond userInfoCond = new UserInfoCond();
        userInfoCond.setLogonName(logonName);
        userInfoCond.setUserType(UserTypeEnum.WEB);
        userInfoCond.setStatus(StatusEnum.ENABLE);
        List<UserInfoDo> list = userInfoRepository.getByCond(userInfoCond);
        if (CollectionUtils.isEmpty(list)) {
            logger.info("用户登录失败--用户不存在  userInfoCond={} ", userInfoCond);
            modelMap.addAttribute("errorTips", "用户名不存在");
            modelMap.addAttribute("logonForm", logonForm);
            return logonPage;
        }
        UserInfoDo userInfoDo = list.get(0);

        String pwdHash = userInfoDo.getPwdHash();
        String pwdSalt = userInfoDo.getPwdSalt();
        String pwdHashTemp = PwdUtils.hashPassword(password, pwdSalt);
        if (!StringUtils.equals(pwdHash, pwdHashTemp)) {
            logger.info("用户登录失败-密码错误  userInfoDo={} ", userInfoDo);
            modelMap.addAttribute("errorTips", "用户密码错误");
            modelMap.addAttribute("logonForm", logonForm);
            return logonPage;
        }
        //登录成功
        SessionUtil.setUserInfo(request, UserInfoConvertor.convert(userInfoDo));
        return userCenterPage;
    }
}
