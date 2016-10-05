package cn.wxqwl.zj.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.web.SystemConstants;

@Controller
@RequestMapping(value = "logout.htm")
public class logoutController implements SystemConstants {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(logoutController.class);

	private static final String indexHtm = "index.htm";

	@RequestMapping(method = RequestMethod.GET)
	public String doGet(HttpServletRequest request) {
		logger.info("退出登陆  doGet");
		request.getSession().removeAttribute(USER_INFO);
		request.getSession().removeAttribute(UID);
		return "redirect:/" + indexHtm;
	}

}
