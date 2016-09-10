package cn.edu.ntu.jtxy.core.repository.wx.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.dao.wx.PointDao;
import cn.edu.ntu.jtxy.core.model.wx.PointDo;
import cn.edu.ntu.jtxy.core.repository.wx.PointRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: PointRecordRepository.java, v 0.1 2016年4月14日 下午2:14:24 {jin.zhang@witontek.com} Exp $
 */
public class PointRepositoryImpl implements PointRepository {

    private static final Logger logger = LoggerFactory.getLogger(PointRecordRepositoryImpl.class);

    @Autowired
    private PointDao            pointDao;

    @Override
    public long add(PointDo pointDo) {
        logger.info("积分新增 pointDo={}", pointDo);
        if (pointDo == null) {
            return -1;
        }
        return pointDao.add(pointDo);
    }
}
