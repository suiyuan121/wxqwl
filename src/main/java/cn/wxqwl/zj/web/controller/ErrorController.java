package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "error.htm")
public class ErrorController {

    private static final Logger logger = LoggerFactory.getLogger(ErrorController.class);

    private static String page_error = "error";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.error("错误页面   doGet()");
        return page_error;
    }

}
