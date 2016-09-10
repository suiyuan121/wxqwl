package cn.edu.ntu.jtxy.core.dao.wx.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.dao.wx.PointDao;
import cn.edu.ntu.jtxy.core.model.wx.PointDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenDaoImpl.java, v 0.1 2016年3月22日 下午2:00:12 {jin.zhang@witontek.com} Exp $
 */
public class PointDaoImpl extends SqlSessionDaoSupport implements PointDao {

    private static final Logger logger    = LoggerFactory.getLogger(PointDaoImpl.class);

    private static final String NAMESPACE = PointDao.class.getName();

    @Override
    public long add(PointDo pointDo) {
        logger.info("积分新增  pointDo={}", pointDo);
        getSqlSession().insert(NAMESPACE + ".add", pointDo);
        return pointDo.getId();
    }

}
