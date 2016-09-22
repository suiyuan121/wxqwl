package cn.wxqwl.zj.core.repository;

import cn.wxqwl.zj.core.model.dos.UserInfoDo;
import cn.wxqwl.zj.core.model.dto.UserInfo;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: UserInfoConvertor.java, v 0.1 2016年9月3日 下午8:35:01 Administrator Exp $
 */
public class UserInfoConvertor {

    public static UserInfo convert(UserInfoDo userInfoDo) {
        if (userInfoDo == null) {
            return null;
        }
        UserInfo userInfo = new UserInfo();
        userInfo.setUid(userInfoDo.getUid());
        return userInfo;
    }

}
