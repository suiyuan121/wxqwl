package cn.edu.ntu.jtxy.core.dao.wx.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.dao.wx.PointRecordDao;
import cn.edu.ntu.jtxy.core.model.wx.PointRecordDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenDaoImpl.java, v 0.1 2016年3月22日 下午2:00:12 {jin.zhang@witontek.com} Exp $
 */
public class PointRecordDaoImpl extends SqlSessionDaoSupport implements PointRecordDao {

    private static final Logger logger    = LoggerFactory.getLogger(PointRecordDaoImpl.class);

    private static final String NAMESPACE = PointRecordDao.class.getName();

    @Override
    public long add(PointRecordDo pointRecordDo) {
        logger.info("积分记录新增  pointRecordDo={}", pointRecordDo);
        getSqlSession().insert(NAMESPACE + ".add", pointRecordDo);
        return pointRecordDo.getId();
    }

}
