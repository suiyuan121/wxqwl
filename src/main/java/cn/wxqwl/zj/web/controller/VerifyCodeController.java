package cn.wxqwl.zj.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.utils.SessionUtil;
import cn.wxqwl.zj.web.utils.VerifyCodeUtils;

@Controller
@RequestMapping("vc.htm")
public class VerifyCodeController implements SystemConstants {
    /**
    * Logger for this class
    */
    private static final Logger logger = LoggerFactory.getLogger(VerifyCodeController.class);

    @RequestMapping(method = RequestMethod.GET)
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        logger.info("生成验证码  。。。。");
        try {
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/jpeg");

            //生成随机字串  
            String verifyCode = VerifyCodeUtils.generateVerifyCode(4);

            //存入会话session  
            SessionUtil.add(request, VERTFY_CODE, verifyCode);
            //生成图片  
            int w = 200, h = 80;
            VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
        } catch (IOException e) {
            logger.error(String.format("【图片验证码生成异常】", e.getMessage()), e);
        }
    }
}
