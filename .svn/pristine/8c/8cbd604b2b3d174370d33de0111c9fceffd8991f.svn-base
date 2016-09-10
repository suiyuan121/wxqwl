package cn.edu.ntu.jtxy.web.controller.wx;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.web.SystemConstants;
import cn.edu.ntu.jtxy.web.filter.OperationContex;

/**
 * 上传作品
 * @author {jin.zhang@witontek.com}
 * @version $Id: UploadWorksController.java, v 0.1 2016年4月28日 下午1:37:48 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "uploadWorks.htm")
public class UploadWorksController implements SystemConstants {
    /**  */
    private static final Logger  logger            = LoggerFactory
                                                       .getLogger(UploadWorksController.class);

    private static final String  page_upload_works = "uploadWorks";

    @Autowired
    private WeiXinUserRepository weiXinUserRepository;

    @Autowired
    private UserInfoRepository   userInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map, HttpServletRequest request) {
        UserInfo userInfo = OperationContex.getCurrentuserinfo();
        logger.info("上传作品    doGet  userInfo={}", userInfo);
        //        if (userInfo == null) {
        //            return ERROR_PAGE;
        //        }

        return page_upload_works;
    }
}
