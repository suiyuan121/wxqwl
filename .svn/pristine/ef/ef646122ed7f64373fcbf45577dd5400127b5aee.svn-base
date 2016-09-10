package cn.edu.ntu.jtxy.web.filter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: OperationContex.java, v 0.1 2016年3月29日 上午10:31:08 {jin.zhang@witontek.com} Exp $
 */
public class OperationContex {

    /**
     * Logger for this class
     */
    private static final Logger               logger          = LoggerFactory
                                                                  .getLogger(OperationContex.class);
    /** 当前用户 */
    public static final ThreadLocal<UserInfo> currentUserInfo = new ThreadLocal<UserInfo>();

    public static final ThreadLocal<String>   uid             = new ThreadLocal<String>();

    /**
     * Getter method for property <tt>uid</tt>.
     * 
     * @return property value of uid
     */
    public static String getUid() {
        return uid.get();
    }

    /**
     * Getter method for property <tt>currentuserinfo</tt>.
     * 
     * @return property value of currentUserInfo
     */
    public static UserInfo getCurrentuserinfo() {
        return currentUserInfo.get();
    }

    public static void setCurrentuserinfo(UserInfo userInfo) {
        currentUserInfo.set(userInfo);
    }

    public static void setUid(String _uid) {
        uid.set(_uid);
    }

    public static void remove() {
        logger.debug("[OperationContext]remove");
        currentUserInfo.remove();
        uid.remove();
    }
}
