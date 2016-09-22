package cn.wxqwl.zj.core.repository.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.wxqwl.zj.core.dao.ImageInfoDao;
import cn.wxqwl.zj.core.model.dos.ImageInfoDo;
import cn.wxqwl.zj.core.repository.ImageInfoRepository;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: ImageInfoRepositoryImpl.java, v 0.1 2016年9月1日 下午3:36:20
 *          Administrator Exp $
 */
public class ImageInfoRepositoryImpl implements ImageInfoRepository {

	private static final Logger logger = LoggerFactory
			.getLogger(ImageInfoRepositoryImpl.class);

	@Autowired
	private ImageInfoDao imageInfoDao;

	@Override
	public long add(ImageInfoDo imageInfoDo) {
		logger.info(String.format("新增图片 imageInfoDo=%s", imageInfoDo));
		if (imageInfoDo == null) {
			return 0;
		}
		return imageInfoDao.add(imageInfoDo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.wxqwl.zj.core.repository.ImageInfoRepository#getById(long)
	 */
	@Override
	public ImageInfoDo getById(long id) {
		logger.info("图片查询  id={}", id);
		if (id <= 0) {
			return null;
		}
		return imageInfoDao.getById(id);
	}

}
