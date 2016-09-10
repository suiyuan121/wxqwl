package cn.edu.ntu.jtxy.core.repository.wx.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.dao.wx.RefreshTokenDao;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.RefreshTokenCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepositoryImpl.java, v 0.1 2016年3月22日 下午1:49:48 {jin.zhang@witontek.com} Exp $
 */
public class RefreshTokenRepositoryImpl implements RefreshTokenRepository {

    private static final Logger logger = LoggerFactory.getLogger(RefreshTokenRepositoryImpl.class);

    @Autowired
    private RefreshTokenDao     refreshTokenDao;

    @Override
    public List<RefreshTokenDo> getByCond(RefreshTokenCond cond) {
        logger.info("微信刷新access_token  查询cond={}", cond);
        if (cond == null) {
            return null;
        }
        List<RefreshTokenDo> list = refreshTokenDao
            .getByCond(cond.getAppId(), cond.getExpireTime());
        return list;
    }

    @Override
    public long add(RefreshTokenDo refreshTokenDo) {
        logger.info("微信刷新access_token  新增refreshTokenDo={}", refreshTokenDo);
        if (refreshTokenDo == null) {
            return -1;
        }
        return refreshTokenDao.add(refreshTokenDo);
    }

    @Override
    public RefreshTokenDo getLastRecord(String appId) {
        logger.info("微信刷新access_token 查询最新的access_token,appId={}", appId);
        return refreshTokenDao.getLastRecord(appId);
    }
}
