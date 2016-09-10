package cn.edu.ntu.jtxy.core.dao.wx.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import cn.edu.ntu.jtxy.core.dao.wx.RefreshTokenDao;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenDaoImpl.java, v 0.1 2016年3月22日 下午2:00:12 {jin.zhang@witontek.com} Exp $
 */
public class RefreshTokenDaoImpl extends SqlSessionDaoSupport implements RefreshTokenDao {

    private static final Logger logger    = LoggerFactory.getLogger(RefreshTokenDaoImpl.class);

    private static final String NAMESPACE = RefreshTokenDao.class.getName();

    @Override
    public List<RefreshTokenDo> getByCond(String appId, Date expireTime) {
        logger.info("token 刷新  查询 appId={},gmtExpire={}", appId, expireTime);
        Map<String, Object> params = new HashMap<>();
        params.put("appId", appId);
        params.put("expireTime", expireTime);
        return getSqlSession().selectList(NAMESPACE + ".getByCond", params);
    }

    @Override
    public long add(RefreshTokenDo refreshTokenDo) {
        logger.info("token刷新  新增refreshTokenDao={}", refreshTokenDo);
        int size = getSqlSession().insert(NAMESPACE + ".add", refreshTokenDo);
        Assert.isTrue(size == 1, String.format("insert error. do={}", refreshTokenDo));
        return refreshTokenDo.getId();
    }

    @Override
    public RefreshTokenDo getLastRecord(String appId) {
        logger.info("token刷新  查询最新的token  appId={}", appId);
        return getSqlSession().selectOne(NAMESPACE + ".getLastRecord", appId);
    }
}
