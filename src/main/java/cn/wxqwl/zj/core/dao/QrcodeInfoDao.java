package cn.wxqwl.zj.core.dao;

import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.repository.pagelist.PageList;

public interface QrcodeInfoDao {

	/**
	 * @param qrcodeInfoDo
	 * @return
	 */
	long add(QrcodeInfoDo qrcodeInfoDo);

	/**
	 * @param pageSize
	 * @param currentPage
	 * @param type
	 * @param uid
	 * @return
	 */
	public PageList<QrcodeInfoDo> pageQuery(int pageSize, int currentPage,
			String type, String uid);

}
