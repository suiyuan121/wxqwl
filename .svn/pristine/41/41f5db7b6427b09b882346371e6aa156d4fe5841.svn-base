package cn.edu.ntu.jtxy.web.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

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

import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.util.SessionUtil;
import cn.edu.ntu.jtxy.web.SystemConstants;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: LoginFilter.java, v 0.1 2016年4月19日 上午9:50:31 {jin.zhang@witontek.com} Exp $
 */
public class LoginFilter implements SystemConstants, Filter {

    private static final Logger logger        = LoggerFactory.getLogger(LoginFilter.class);

    private List<String>        no_auth_pages = Arrays.asList("/lottery.htm", "/wxOauth.htm",
                                                  "/bind.htm", "/unBind.htm", "/login.htm",
                                                  "/error.htm", "/wxOauth.htm", "/userInfo.htm",
                                                  "/uploadWorks.htm");

    private static String       error         = "error.htm";

    private static String       loginPage     = "%s/login.htm";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        logger.info("login filter init....");

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
                                                                                             throws IOException,
                                                                                             ServletException {
        logger.info("login filter doFilter....");
        if (request instanceof HttpServletRequest) {
            HttpServletRequest req = (HttpServletRequest) request;
            HttpServletResponse resp = (HttpServletResponse) response;
            UserInfo userInfo = SessionUtil.getUser(req);
            if (userInfo == null) {
                //未登录状态
                String uri = req.getRequestURI();
                String contextPath = req.getContextPath();
                String requestHtm = StringUtils.substringAfter(uri, contextPath);
                logger.info("uri={},contextPath={},requestHtm={}", uri, contextPath, requestHtm);
                if (StringUtils.isEmpty(requestHtm)) {
                    logger.error("请求路径错误 {}", uri);
                    resp.sendRedirect(error);
                    return;
                }
                //true 是不需要登录就能访问的
                boolean isContain = no_auth_pages.contains(requestHtm);
                if (!isContain) {
                    logger.info("需要登录可访问的页面={}", requestHtm);
                    resp.sendRedirect(String.format(loginPage, contextPath));
                    return;
                }
                //不需登录
                chain.doFilter(request, response);
            } else {
                //已登录
                chain.doFilter(request, response);
            }
        }

    }

    @Override
    public void destroy() {
        logger.info("login filter destory....");
    }

}
