package cn.wxqwl.zj.core.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.wxqwl.zj.core.dao.QrcodeInfoDao;
import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.repository.pagelist.PageList;

public class QrcodeInfoDaoImpl extends SqlSessionDaoSupport implements
		QrcodeInfoDao {

	private static final Logger logger = LoggerFactory
			.getLogger(QrcodeInfoDaoImpl.class);

	private static final String NAMESPACE = QrcodeInfoDao.class.getName();

	@Override
	public long add(QrcodeInfoDo qrcodeInfoDo) {
		logger.info("新增二维码  qrcodeInfoDo={}", qrcodeInfoDo);
		int ret = getSqlSession().insert(NAMESPACE + ".add", qrcodeInfoDo);
		return ret > 0 ? qrcodeInfoDo.getId() : -1;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.wxqwl.zj.core.dao.QrcodeInfoDao#pageQuery(int, int,
	 * java.lang.String, java.lang.String)
	 */
	@Override
	public PageList<QrcodeInfoDo> pageQuery(int pageSize, int currentPage,
			String type, String uid) {
		logger.info("二维码分页查询  pageSize={},currentPage={},type={},uid={}",
				pageSize, currentPage, type, uid);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("uid", uid);

		int totalCount = getSqlSession().selectOne(
				NAMESPACE + ".pageQueryCount", map);

		int pageNum = totalCount % pageSize > 0 ? (totalCount / pageSize) + 1
				: (totalCount / pageSize);

		if (currentPage > pageNum) {
			// 当前页大于总页数，重置到首页
			currentPage = 1;
		}
		map.put("pageSize", pageSize);
		map.put("offset", (currentPage - 1) * pageSize);

		List<QrcodeInfoDo> list = getSqlSession().selectList(
				NAMESPACE + ".pageQuery", map);
		PageList<QrcodeInfoDo> pageList = new PageList<QrcodeInfoDo>();
		pageList.setResultList(list);
		pageList.setCurrentPage(currentPage);
		pageList.setPageNum(pageNum);
		pageList.setPageSize(pageSize);
		pageList.setTotalCount(totalCount);

		return pageList;
	}
}
