package cn.edu.ntu.jtxy.core.dao.wx.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.dao.wx.WeiXinUserDao;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoDao.java, v 0.1 2016年3月28日 下午3:56:15 {jin.zhang@witontek.com} Exp $
 */
public class WeiXinUserDaoImpl extends SqlSessionDaoSupport implements WeiXinUserDao {

    private static final Logger logger    = LoggerFactory.getLogger(WeiXinUserDaoImpl.class);

    private static final String NAMESPACE = WeiXinUserDao.class.getName();

    @Override
    public long add(WeiXinUserDo weiXinUserDo) {
        logger.info("新增微信用户   weiXinUserDo={}", weiXinUserDo);
        getSqlSession().insert(NAMESPACE + ".insert", weiXinUserDo);
        return weiXinUserDo.getId();
    }

    @Override
    public WeiXinUserDo getByOpenId(String openId) {
        logger.info("微信用户查询   openId={}", openId);
        if (openId == null) {
            return null;
        }
        return getSqlSession().selectOne(NAMESPACE + ".getByOpenId", openId);
    }

    @Override
    public boolean updateSubscribeByOpenId(String subscribe, String openId) {
        logger.info("更新订阅状态  subscribe={},openId={}", subscribe, openId);
        if (StringUtils.isBlank(subscribe) || StringUtils.isBlank(openId)) {
            return false;
        }
        Map<String, String> map = new HashMap<String, String>();
        map.put("subscribe", subscribe);
        map.put("openId", openId);

        return getSqlSession().update(NAMESPACE + ".updateSubscribeByOpenId", map) == 1;
    }
}
