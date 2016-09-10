package cn.wxqwl.zj.core.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.wxqwl.zj.core.dao.UserInfoDao;
import cn.wxqwl.zj.core.model.UserInfoDo;

public class UserInfoDaoImpl extends SqlSessionDaoSupport implements UserInfoDao {

    private static final Logger logger = LoggerFactory.getLogger(UserInfoDaoImpl.class);

    private static final String NAMESPACE = UserInfoDao.class.getName();

    @Override
    public String add(UserInfoDo userInfoDo) {
        logger.info("用户新增  userInfoDo=" + userInfoDo);
        int ret = getSqlSession().insert(NAMESPACE + ".add", userInfoDo);
        return ret > 0 ? userInfoDo.getUid() : "";
    }

    @Override
    public long getSeq() {
        logger.info("获取seq");
        return getSqlSession().selectOne(NAMESPACE + ".getSeq");
    }

    @Override
    public List<UserInfoDo> getUserByCond(String logonName, String userType, String status) {
        logger.info("用户查询--logonName={},userType={}，status={}", logonName, userType, status);
        Map<String, String> map = new HashMap<String, String>();
        map.put("logonName", logonName);
        map.put("userType", userType);
        map.put("status", status);
        return getSqlSession().selectList(NAMESPACE + ".getByCond", map);
    }

}
