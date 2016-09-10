package cn.edu.ntu.jtxy.core.repository.wx.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;

import cn.edu.ntu.jtxy.core.dao.wx.UserInfoDao;
import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;

public class UserInfoRepositoryImpl implements UserInfoRepository {

    private static final Logger logger     = LoggerFactory.getLogger(UserInfoRepositoryImpl.class);

    public static final long    MAX        = 10000L * 10000L * 100L;

    /** 15位uid 格式化 */
    public static final String  UID_FORMAT = "10304%010d";

    @Autowired
    private UserInfoDao         userInfoDao;

    @Override
    public List<UserInfoDo> getByCond(UserInfoCond userInfoCond) {
        logger.info("用户查询   userInfoCond={} ", userInfoCond);
        if (userInfoCond == null) {
            return null;
        }
        return userInfoDao.getByCond(userInfoCond.getStuNo(), userInfoCond.getOpenId(),
            userInfoCond.getStatus() == null ? null : userInfoCond.getStatus().getCode());
    }

    @Override
    public BaseResult add(UserInfoDo userInfoDo) {
        logger.info("新增用户   UserInfoDo={} ", userInfoDo);
        BaseResult result = new BaseResult();
        if (userInfoDo == null) {
            result.setSuccess(false);
            return result;
        }
        userInfoDo.setUid(getSeq());
        try {
            userInfoDao.add(userInfoDo);
            result.setSuccess(true);
        } catch (DuplicateKeyException e) {
            result.setSuccess(false);
            result.setCode(ResultCodeEnum.DUPLICATEKEY.getCode());
            logger.error(String.format("新增用户失败，主键冲突   userInfoDo=%s", userInfoDo), e);
        }
        return result;
    }

    @Override
    public String getSeq() {
        return String.format(UID_FORMAT, userInfoDao.getSeq() % MAX);
    }

    @Override
    public boolean unBindOpenId(String openId) {
        logger.info("用户解绑   openId={}", openId);
        if (StringUtils.isEmpty(openId)) {
            return false;
        }
        return userInfoDao.unBind(openId);
    }

    @Override
    public boolean updateOpenId(UserInfoDo userInfoDo) {
        logger.info("更新openId   userInfoDo={}", userInfoDo);
        if (userInfoDo == null) {
            return false;
        }
        return userInfoDao.updateOpenIdByUid(userInfoDo.getOpenId(), userInfoDo.getUid());
    }
}
