package cn.wxqwl.zj.web.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.biz.service.ResourceService;
import cn.wxqwl.zj.core.ResultCodeEnum;
import cn.wxqwl.zj.core.component.UserInfoComponent;
import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.dos.UserInfoDo;
import cn.wxqwl.zj.core.model.dto.UserInfo.UserTypeEnum;
import cn.wxqwl.zj.util.SysFileUtils;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.controller.form.RegisterForm;
import cn.wxqwl.zj.web.utils.SessionUtil;

@Controller
@RequestMapping(value = "register.htm")
public class RegisterController implements SystemConstants {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(RegisterController.class);

	private static final String registerPage = "register";

	@Autowired
	private ResourceService resourceService;

	@Autowired
	private UserInfoComponent userInfoComponent;

	@RequestMapping(method = RequestMethod.GET)
	public String doGet(ModelMap map) {
		logger.info("注册 doGet");
		return registerPage;
	}

	@RequestMapping(method = RequestMethod.POST)
	public String doPost(ModelMap modelMap, RegisterForm registerForm,
			HttpServletRequest request) {
		logger.info(String.format("注册 doPost registerForm=%s", registerForm));

		String sessionVerifyCode = (String) SessionUtil.get(request,
				VERTFY_CODE);
		logger.info("正确的验证码是    sessionVerifyCode=" + sessionVerifyCode);
		if (!StringUtils.equalsIgnoreCase(registerForm.getVerifyCode(),
				sessionVerifyCode)) {
			modelMap.addAttribute("errorTips", "验证码错误");
			modelMap.addAttribute("registerForm", registerForm);
			return registerPage;
		}
		String imagePath = "";
		try {
			imagePath = resourceService.getImagePath().getURL().getPath();
		} catch (IOException e) {
			logger.info("读取配置文件图片地址异常 e={}", e);
		}

		String imageUrl = SysFileUtils.copyPicFile(registerForm.getFaceimg(),
				imagePath);

		UserInfoDo userInfoDo = new UserInfoDo();
		userInfoDo.setEmail(registerForm.getEmail());
		userInfoDo.setHeadImage(imageUrl);
		userInfoDo.setLogonName(registerForm.getLogonName());
		userInfoDo.setUserType(UserTypeEnum.WEB.getCode());
		userInfoDo.setPwdHash(registerForm.getPassword());
		userInfoDo.setPwdSalt(UUID.randomUUID().toString());

		BaseResult result = userInfoComponent.add(userInfoDo);
		if (!result.isSuccess()) {
			if (StringUtils.equals(result.getCode(),
					ResultCodeEnum.DUPLICATEKEY.getCode())) {
				modelMap.addAttribute("errMsg", "重复的用户名");
			} else {
				modelMap.addAttribute("errMsg", "系统内部错误");
			}
		}
		return registerPage;
	}
}
