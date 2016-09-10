package cn.wxqwl.zj.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "index.htm")
public class IndexController {
    /**  */

    private static Logger       logger    = LoggerFactory.getLogger(IndexController.class);

    private static final String indexPage = "index";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map) {
        logger.info("测试   ");
        return indexPage;
    }
}
