package cn.wxqwl.zj.core.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.wxqwl.zj.core.dao.LabelDao;
import cn.wxqwl.zj.core.model.dos.LabelDo;

public class LabelDaoImpl extends SqlSessionDaoSupport implements LabelDao {

	private static final Logger logger = LoggerFactory
			.getLogger(LabelDaoImpl.class);

	private static final String NAMESPACE = LabelDao.class.getName();

	@Override
	public List<LabelDo> getAll() {
		logger.info("查询所有标签   ");
		return getSqlSession().selectList(NAMESPACE + ".selectAll");
	}

}
