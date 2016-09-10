package cn.wxqwl.zj.core.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.wxqwl.zj.core.dao.ImageInfoDao;
import cn.wxqwl.zj.core.model.ImageInfoDo;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: ImageInfoDaoImpl.java, v 0.1 2016年9月1日 下午3:24:14 Administrator Exp $
 */
public class ImageInfoDaoImpl extends SqlSessionDaoSupport implements ImageInfoDao {

    private static final Logger logger    = LoggerFactory.getLogger(ImageInfoDaoImpl.class);

    private static final String NAMESPACE = ImageInfoDao.class.getName();

    @Override
    public long add(ImageInfoDo imageInfoDo) {
        logger.info(String.format("新增图片   imageInfoDo=%s", imageInfoDo));
        int ret = this.getSqlSession().insert(NAMESPACE + ".add", imageInfoDo);
        return ret > 0 ? imageInfoDo.getId() : 0;
    }
}
