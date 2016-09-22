package cn.wxqwl.zj.core.repository.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.wxqwl.zj.core.dao.QrcodeInfoDao;
import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.repository.ImageInfoRepository;
import cn.wxqwl.zj.core.repository.QrcodeInfoRepository;
import cn.wxqwl.zj.core.repository.cond.QrcodeInfoPageCond;
import cn.wxqwl.zj.core.repository.pagelist.PageList;

public class QrcodeInfoRepositoryImpl implements QrcodeInfoRepository {

	private static final Logger logger = LoggerFactory
			.getLogger(QrcodeInfoRepositoryImpl.class);

	@Autowired
	private QrcodeInfoDao qrcodeInfoDao;

	@Autowired
	private ImageInfoRepository imageInfoRepository;

	@Override
	public long add(QrcodeInfoDo qrcodeInfoDo) {
		logger.info("新增二维码  qrcodeInfoDo={}", qrcodeInfoDo);
		if (qrcodeInfoDo == null) {
			return -1;
		}
		return qrcodeInfoDao.add(qrcodeInfoDo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * cn.wxqwl.zj.core.repository.QrcodeInfoRepository#pageQuery(cn.wxqwl.zj
	 * .core.repository.cond.QrcodeInfoPageCond)
	 */
	@Override
	public PageList<QrcodeInfoDo> pageQuery(QrcodeInfoPageCond cond) {
		logger.info("二维码分页查询  cond={} ", cond);
		if (cond == null) {
			return null;
		}
		return qrcodeInfoDao.pageQuery(cond.getPageSize(), cond
				.getCurrentPage(), cond.getType() == null ? null : cond
				.getType().getCode(), cond.getUid());

	}
}
