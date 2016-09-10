package cn.wxqwl.zj.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.core.model.UserInfo.UserTypeEnum;
import cn.wxqwl.zj.core.model.UserInfoDo;
import cn.wxqwl.zj.core.model.enums.StatusEnum;
import cn.wxqwl.zj.core.repository.UserInfoConvertor;
import cn.wxqwl.zj.core.repository.UserInfoRepository;
import cn.wxqwl.zj.core.repository.cond.UserInfoCond;
import cn.wxqwl.zj.util.PwdUtils;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.controller.form.RegisterForm;
import cn.wxqwl.zj.web.utils.SessionUtil;

/**
 * 发布微信群
 * @author 1581128024@qq.com
 * @version $Id: PublishWxgroupController.java, v 0.1 2016年9月4日 上午11:34:43 Administrator Exp $
 */
@Controller
@RequestMapping(value = "publishWxgroup.htm")
public class PublishWxgroupController implements SystemConstants {
    /**  */

    private static Logger logger = LoggerFactory.getLogger(PublishWxgroupController.class);

    private static final String publishWxgroupPage = "publishWxgroup";

    private static final String userCenterPage = "userCenter";

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("发布微信群  doGet");
        return publishWxgroupPage;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(ModelMap modelMap) {
        logger.info("发布微信群 doPost ");

        return userCenterPage;
    }
}
