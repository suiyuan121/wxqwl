package cn.edu.ntu.jtxy.util;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: PwdUtils.java, v 0.1 2016年4月13日 下午4:22:08 {jin.zhang@witontek.com} Exp $
 */
public class PwdUtils {

    /**
     * 
     * @param password
     * @param passwordSalt
     * @return
     */
    public static String hashPassword(String password, String passwordSalt) {
        return DigestUtils.sha256Hex(password + passwordSalt);
    }

}
