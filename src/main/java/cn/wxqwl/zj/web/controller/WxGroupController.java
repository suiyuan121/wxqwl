package cn.wxqwl.zj.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author zhangjin
 * 
 */
@Controller
@RequestMapping(value = "wxgroup.htm")
public class WxGroupController {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(WxGroupController.class);

	private static final String wxGroupPage = "wxgroup";

	@RequestMapping(method = RequestMethod.GET)
	public String doGet(ModelMap map, HttpServletRequest request) {
		logger.info("微信群   ");

		return wxGroupPage;
	}

}
