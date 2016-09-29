package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotFoundController {

	private static final Logger logger = LoggerFactory
			.getLogger(NotFoundController.class);

	private static String page_404 = "404";

	@RequestMapping("/notFound")
	public String doGet() {
		logger.error("not Found页面   doGet()");
		return page_404;
	}

}
