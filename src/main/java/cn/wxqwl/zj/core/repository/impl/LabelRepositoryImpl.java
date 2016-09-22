package cn.wxqwl.zj.core.repository.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.wxqwl.zj.core.dao.LabelDao;
import cn.wxqwl.zj.core.model.dos.LabelDo;
import cn.wxqwl.zj.core.repository.LabelRepository;

public class LabelRepositoryImpl implements LabelRepository {

	private static final Logger logger = LoggerFactory
			.getLogger(LabelRepositoryImpl.class);

	@Autowired
	private LabelDao labelDao;

	@Override
	public List<LabelDo> getAll() {
		logger.info("查询所有label");
		return labelDao.getAll();
	}

}
