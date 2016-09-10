package cn.wxqwl.zj.web.filter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
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
import org.springframework.core.io.Resource;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import cn.wxqwl.zj.core.model.UserInfo;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.utils.SessionUtil;

public class LoginFilter implements SystemConstants, Filter {

    private static final Logger logger = LoggerFactory.getLogger(LoginFilter.class);

    private static String error = "error.htm";

    private List<String> pageList = new ArrayList<String>();

    private static String loginPage = "%s/logon.htm";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        logger.info("login filter init....不需要登陆页面初始化...");
        WebApplicationContext context = WebApplicationContextUtils
            .getWebApplicationContext(filterConfig.getServletContext());
        Resource resource = context.getResource(filterConfig.getInitParameter("path"));
        try {
            BufferedReader reader = new BufferedReader(
                new InputStreamReader(resource.getInputStream(), DEFAULT_CHARSET));
            String line = "";
            while ((line = reader.readLine()) != null) {
                if (StringUtils.startsWith(line, "/")) {
                    pageList.add(line);
                }
            }
            logger.info("授权页面列表  pageList={}", pageList);
        } catch (IOException e) {
            logger.error("读权限配置文件异常", e);
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        logger.info("login filter doFilter....");
        if (request instanceof HttpServletRequest) {
            HttpServletRequest req = (HttpServletRequest) request;
            HttpServletResponse resp = (HttpServletResponse) response;
            UserInfo userInfo = SessionUtil.getUser(req);
            if (userInfo == null) {
                // 未登录状态
                String uri = req.getRequestURI();
                String contextPath = req.getContextPath();
                String requestHtm = StringUtils.substringAfter(uri, contextPath);
                if (StringUtils.isEmpty(requestHtm)) {
                    resp.sendRedirect(error);
                    return;
                }
                // true 是不需要登录就能访问的
                boolean isContain = pageList.contains(requestHtm);
                if (!isContain) {
                    logger.info("需要登录可访问的页面={}" + requestHtm);
                    resp.sendRedirect(String.format(loginPage, contextPath));
                    return;
                }
                // 不需登录
                chain.doFilter(request, response);
            } else {
                // 已登录
                chain.doFilter(request, response);
            }
        }

    }

    @Override
    public void destroy() {
        logger.info("login filter destory....");
    }

}
