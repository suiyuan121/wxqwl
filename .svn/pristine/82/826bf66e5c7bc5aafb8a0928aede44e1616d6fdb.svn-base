package cn.edu.ntu.jtxy.web.filter;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.util.SessionUtil;
import cn.edu.ntu.jtxy.util.URLUtils;
import cn.edu.ntu.jtxy.web.SystemConstants;

/**
 * oauth网页授权
 * @author {jin.zhang@witontek.com}
 * @version $Id: WeiXinFilter.java, v 0.1 2016年3月15日 上午10:42:48 {jin.zhang@witontek.com} Exp $
 */
public class WxOauthFilter implements Filter {

    /**  */
    private static final Logger   logger           = LoggerFactory.getLogger(WxOauthFilter.class);

    /** 微信标记 */
    private static final String   SCOPE_KEY        = "scopeType";

    /** 只获取openID*/
    private static final String   SCOPE_VALUE_BASE = "base";

    /** 获取全部信息*/
    private static final String   SCOPE_VALUE_FULL = "full";

    private static final String   REDIRECT_URI     = "/wxOauth.htm";

    private static final String   OAUTH_URL_BASE   = "https://open.weixin.qq.com/connect/oauth2/authorize?"
                                                     + "appid=%s&"
                                                     + "redirect_uri=%s&"
                                                     + "response_type=code&"
                                                     + "scope=snsapi_base&"
                                                     + "state=%s#wechat_redirect";

    //    private static final String   OAUTH_URL_FULL   = "https://open.weixin.qq.com/connect/oauth2/authorize?"
    //                                                     + "appid=%s&"
    //                                                     + "redirect_uri=%s&"
    //                                                     + "response_type=code&"
    //                                                     + "scope=snsapi_userinfo&"
    //                                                     + "state=%s"
    //                                                     + "#wechat_redirect";
    public static final String    OAUTH_URL_FULL   = "https://open.weixin.qq.com/connect/oauth2/authorize"
                                                     + "?appid=%s"
                                                     + "&redirect_uri=%s"
                                                     + "&response_type=code"
                                                     + "&scope=snsapi_userinfo"
                                                     + "&state=%s"
                                                     + "#wechat_redirect";

    @Autowired
    private WxAppConfigRepository appConfigRepository;

    /**
     * Default constructor. 
     */
    public WxOauthFilter() {
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
                                                                                             throws IOException,
                                                                                             ServletException {
        logger.info("微信过滤器 doFilter");

        if (request instanceof HttpServletRequest) {
            HttpServletRequest req = (HttpServletRequest) request;
            HttpServletResponse resp = (HttpServletResponse) response;

            UserInfo userInfo = SessionUtil.getUser(req);
            logger.info("微信过滤器 doFilter  userInfo={},sessionId={}", userInfo, req.getSession()
                .getId());
            if (userInfo != null) {
                //session中存在用户，直接返回
                chain.doFilter(request, response);
                return;
            }

            String queryString = req.getQueryString();
            logger.info("微信过滤器 doFilter  queryString={}", queryString);

            Map<String, String> map = URLUtils.getParamMap(req.getQueryString());

            //请求参数中带有这个标记，则是需要Oauth授权获取用户信息
            String scopeType = map.get(SCOPE_KEY);
            if (StringUtils.isBlank(scopeType)) {
                chain.doFilter(request, response);
                return;
            }

            AppConfig appConfig = appConfigRepository.getDefault();
            if (appConfig == null) {
                logger.info("微信过滤器 doFilter 查询配置信息为空");
                chain.doFilter(request, response);
                return;
            }

            String state = req.getRequestURL().append("?").append(req.getQueryString()).toString();

            String redirect = String.format("%s%s", appConfig.getServerUrl(), REDIRECT_URI);
            if (StringUtils.equals(scopeType, SCOPE_VALUE_BASE)) {
                String redirectUrl = String.format(OAUTH_URL_BASE, appConfig.getAppId(),
                    URLEncoder.encode(redirect, SystemConstants.DEFAULT_CHARSET), state);
                logger.info("微信过滤器 doFilter redirectUrl={}", redirectUrl);
                resp.sendRedirect(redirectUrl);
                return;
            } else if (StringUtils.equals(scopeType, SCOPE_VALUE_FULL)) {
                String redirectUrl = String.format(OAUTH_URL_FULL, appConfig.getAppId(),
                    URLEncoder.encode(redirect, SystemConstants.DEFAULT_CHARSET), state);
                logger.info("微信过滤器 doFilter redirectUrl={}", redirectUrl);
                resp.sendRedirect(redirectUrl);
                return;
            }
            logger.info("微信过滤器 doFilter 不支持的标记类型  scopeType={}", scopeType);
            chain.doFilter(request, response);
            return;
        } else {
            chain.doFilter(request, response);
        }
    }

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        //        加载bean，防止注入失败
        SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
    }

}
