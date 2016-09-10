package cn.edu.ntu.jtxy.core.repository.wx.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.dao.wx.PointRecordDao;
import cn.edu.ntu.jtxy.core.model.wx.PointRecordDo;
import cn.edu.ntu.jtxy.core.repository.wx.PointRecordRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WeiXinUserRepositoryImpl.java, v 0.1 2016年3月30日 下午1:42:46 {jin.zhang@witontek.com} Exp $
 */
public class PointRecordRepositoryImpl implements PointRecordRepository {

    private static final Logger logger = LoggerFactory.getLogger(PointRecordRepositoryImpl.class);

    @Autowired
    private PointRecordDao      pointRecordDao;

    @Override
    public long add(PointRecordDo pointRecordDo) {
        logger.info("积分信息新增 studentInfoDo={}", pointRecordDo);
        if (pointRecordDo == null) {
            return -1;
        }
        try {
            long ret = pointRecordDao.add(pointRecordDo);
            return ret;
        } catch (Exception e) {
            logger.error("", e);
            return -1;
        }
    }

}
