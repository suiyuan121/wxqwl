package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.filter.OperationContex;

@Controller
@RequestMapping(value = "mywx.htm")
public class MywxController implements SystemConstants {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(MywxController.class);

	private static final String wxPage = "wx";

	@RequestMapping(method = RequestMethod.GET)
	public String doGet() {
		String uid = OperationContex.getUid();
		logger.info("我的微信  doGet  uid={}", uid);

		return wxPage;
	}

}
