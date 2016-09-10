package cn.edu.ntu.jtxy.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;
import cn.edu.ntu.jtxy.web.SystemConstants;
import cn.edu.ntu.jtxy.web.filter.OperationContex;

public class SessionUtil {

    /**
     * 
     * @param request
     * @return
     */
    public static UserInfo getUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (UserInfo) session.getAttribute(SystemConstants.USER_INFO);
    }

    /**
     * 
     * @param request
     * @return
     */
    public static String getUid(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (String) session.getAttribute(SystemConstants.UID);
    }

    /**
     * 
     * @param request
     * @param userInfo
     */
    public static void setUserInfo(HttpServletRequest request, UserInfo userInfo) {
        if (userInfo == null) {
            return;
        }
        HttpSession session = request.getSession(true);
        session.setAttribute(SystemConstants.USER_INFO, userInfo);
        session.setAttribute(SystemConstants.UID, userInfo.getUid());
    }

    public static void add(HttpServletRequest request, String key, Object value) {
        HttpSession s = request.getSession(true);
        s.setAttribute(key, value);
    }

    public static Object get(HttpServletRequest request, String key) {
        HttpSession s = request.getSession();
        if (s == null) {
            return null;
        }
        return s.getAttribute(key);
    }

    public static void removeUserInfo(HttpServletRequest request) {
        HttpSession s = request.getSession();
        if (s == null) {
            return;
        }
        s.removeAttribute(SystemConstants.UID);
        s.removeAttribute(SystemConstants.USER_INFO);
        OperationContex.remove();
    }

}
