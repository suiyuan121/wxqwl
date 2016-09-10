package cn.edu.ntu.jtxy.web.controller.mng;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;

@Controller
@RequestMapping(value = "error.htm")
public class ErrorController {

    private static final Logger logger     = LoggerFactory.getLogger(ErrorController.class);

    private static String       page_error = "error";

    @Autowired
    private UserInfoRepository  userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("错误页面   doGet()");
        return page_error;
    }

}
