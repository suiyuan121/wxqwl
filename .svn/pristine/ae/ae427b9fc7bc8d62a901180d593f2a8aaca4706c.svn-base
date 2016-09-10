package cn.edu.ntu.jtxy.core.repository;

import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo.UserTypeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.model.UserInfo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoConvertor.java, v 0.1 2016年4月19日 上午10:01:43 {jin.zhang@witontek.com} Exp $
 */
public class UserInfoConvertor {

    /**
     * 
     * @param userInfoDo
     */
    public static UserInfo getUserInfo(UserInfoDo userInfoDo) {
        UserInfo userInfo = new UserInfo();
        if (userInfoDo == null) {
            return null;
        }
        userInfo.setStuNo(userInfoDo.getStuNo());
        userInfo.setUid(userInfoDo.getUid());
        userInfo.setUserType(UserTypeEnum.getByCode(userInfoDo.getUserType()));
        userInfo.setOpenId(userInfoDo.getOpenId());
        return userInfo;

    }
}
