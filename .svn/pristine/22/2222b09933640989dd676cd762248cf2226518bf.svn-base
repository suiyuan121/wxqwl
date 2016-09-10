package cn.edu.ntu.jtxy.web.controller.wx;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.biz.service.client.model.wx.WxUserInfo;
import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo.StatusEnum;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;
import cn.edu.ntu.jtxy.core.repository.UserInfoConvertor;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;
import cn.edu.ntu.jtxy.util.SessionUtil;
import cn.edu.ntu.jtxy.web.SystemConstants;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxOauthController.java, v 0.1 2016年3月15日 下午3:16:18 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "wxOauth.htm")
public class WxOauthController implements SystemConstants {
    /**  */
    private static final Logger   logger               = LoggerFactory
                                                           .getLogger(WxOauthController.class);

    /** 获取用户信息的token */
    public static String          GET_ACCESS_TOKEN_URL = "https://api.weixin.qq.com/sns/oauth2/access_token?"
                                                         + "appid=%s&"
                                                         + "secret=%s&"
                                                         + "code=%s&"
                                                         + "grant_type=authorization_code";

    private static final String   BIND_HTM             = "bind.htm";

    @Autowired
    private WxAppConfigRepository wxAppConfigRepository;

    @Autowired
    private UserInfoRepository    userInfoRepository;

    @Autowired
    private WeiXinUserRepository  weiXinUserRepository;

    @Autowired
    private WxClient              wxClient;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(String code, String state, HttpServletRequest req,
                        HttpServletResponse response, ModelMap map) {
        logger.info("微信授权 结果  code={},state={}", code, state);

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("微信授权: 获取微信配置失败   ");
            return ERROR_PAGE;
        }

        String access_token_url = String.format(GET_ACCESS_TOKEN_URL, appConfig.getAppId(),
            appConfig.getAppSecret(), code);

        Client c = Client.create();
        WebResource r = c.resource(access_token_url);
        String jsResult = r.get(String.class);
        logger.info("微信换取 token 结果  jsResult={}", jsResult);

        try {
            JSONObject jsonObj = new JSONObject(jsResult);
            String access_token = jsonObj.optString("access_token");
            String openId = jsonObj.optString("openid");

            if (StringUtils.isEmpty(access_token) || StringUtils.isEmpty(openId)) {
                String errcode = jsonObj.optString("errcode");
                String errmsg = jsonObj.optString("errmsg");
                logger.warn("微信授权 获取access_token --失败 jsResult={},errcode={},errmsg={}", jsResult,
                    errcode, errmsg);
                return ERROR_PAGE;
            }

            WxUserInfo wxUserInfo = new WxUserInfo();
            wxUserInfo.setAccess_token(access_token);
            wxUserInfo.setOpenId(openId);

            boolean needMore = StringUtils.contains(state, "scopeType=full");
            if (needMore) {
                wxClient.queryWxUserInfo(wxUserInfo);
                logger.info("查询微信基本信息   wxUserInfo={}", wxUserInfo);
            }
            if (needMore && !wxUserInfo.isSuccess()) {
                logger.warn("查询微信基本信息失败   wxUserInfo={}", wxUserInfo);
                return ERROR_PAGE;
            }
            //是否增加微信用户
            WeiXinUserDo weiXinUserDo = weiXinUserRepository.getByOpenId(openId);
            if (weiXinUserDo == null) {
                //新增加微信用户
                weiXinUserDo = new WeiXinUserDo();
                weiXinUserDo.setAppId(appConfig.getAppId());
                weiXinUserDo.setOpenId(openId);
                weiXinUserDo.setUnionId(wxUserInfo.getUnionid());
                weiXinUserDo.setNickName(wxUserInfo.getNickName());
                weiXinUserDo.setHeadImageUrl(wxUserInfo.getHeadImageUrl());
                weiXinUserDo.setProps(wxUserInfo.getProps());
                weiXinUserDo.setSubscribe(WeiXinUserDo.SubscribeEnum.N.getCode());
                long ret = weiXinUserRepository.add(weiXinUserDo);
                if (ret <= 0) {
                    logger.warn("增加微信用户失败   weiXinUserDo={}", weiXinUserDo);
                    return ERROR_PAGE;
                }
            }

            //是否增加系统用户
            UserInfoCond userInfoCond = new UserInfoCond();
            userInfoCond.setOpenId(openId);
            userInfoCond.setStatus(StatusEnum.ENABLE);
            List<UserInfoDo> list = userInfoRepository.getByCond(userInfoCond);
            if (CollectionUtils.isEmpty(list)) {
                logger.info(" 新建用户绑定openId={}", openId);

                //新微信用户,跳转到绑定页面
                map.addAttribute("openId", openId);
                //记住上次请求地址
                SessionUtil.add(req, PAGE_SESSION, state);
                return "redirect:/" + BIND_HTM;
            }

            UserInfoDo userInfoDo = list.get(0);
            //不是新用户,将用户信息保存到session中
            SessionUtil.setUserInfo(req, UserInfoConvertor.getUserInfo(userInfoDo));

        } catch (JSONException e) {
            logger.error(String.format("json格式转换错误   jsResult=%s", jsResult), e);
        }

        return "redirect:" + state;
    }
}
