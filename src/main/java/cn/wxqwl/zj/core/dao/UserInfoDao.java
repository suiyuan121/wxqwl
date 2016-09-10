package cn.wxqwl.zj.core.dao;

import java.util.List;

import cn.wxqwl.zj.core.model.UserInfoDo;

public interface UserInfoDao {

    String add(UserInfoDo userInfoDo);

    long getSeq();

    /**
     * 
     * @param logonName
     * @param userType
     * @param status
     * @return
     */
    List<UserInfoDo> getUserByCond(String logonName, String userType, String status);
}
