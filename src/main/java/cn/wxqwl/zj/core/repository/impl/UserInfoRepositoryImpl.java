package cn.wxqwl.zj.core.repository.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.wxqwl.zj.core.dao.UserInfoDao;
import cn.wxqwl.zj.core.model.dos.UserInfoDo;
import cn.wxqwl.zj.core.repository.UserInfoRepository;
import cn.wxqwl.zj.core.repository.cond.UserInfoCond;

public class UserInfoRepositoryImpl implements UserInfoRepository {

    private static final Logger logger = LoggerFactory.getLogger(UserInfoRepositoryImpl.class);

    public static final long MAX = 10000L * 10000L * 100L;

    /** 15位uid 格式化 */
    public static final String UID_FORMAT = "93106%010d";

    @Autowired
    private UserInfoDao userInfoDao;

    /** 
     * @see cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository#add(cn.wxqwl.zj.core.model.dos.core.model.wx.UserInfoDo)
     */
    @Override
    public String add(UserInfoDo userInfoDo) {
        logger.info(String.format("新增用户   UserInfoDo=%s", userInfoDo));
        if (userInfoDo == null) {
            return null;
        }
        userInfoDo.setUid(getSeq());
        return userInfoDao.add(userInfoDo);
    }

    /** 
     * @see cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository#getSeq()
     */
    @Override
    public String getSeq() {
        return String.format(UID_FORMAT, userInfoDao.getSeq() % MAX);
    }

    @Override
    public List<UserInfoDo> getByCond(UserInfoCond userInfoCond) {
        logger.info("用户查询  userInfoCond={}", userInfoCond);
        if (userInfoCond == null || StringUtils.isBlank(userInfoCond.getLogonName())
            || userInfoCond.getUserType() == null || userInfoCond.getStatus() == null) {
            return null;
        }
        return userInfoDao.getUserByCond(userInfoCond.getLogonName(),
            userInfoCond.getUserType().getCode(), userInfoCond.getStatus().getCode());
    }

}
