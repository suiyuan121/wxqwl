package cn.wxqwl.zj.core.repository;

import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.repository.cond.QrcodeInfoPageCond;
import cn.wxqwl.zj.core.repository.pagelist.PageList;

public interface QrcodeInfoRepository {

	/**
	 * @param qrcodeInfoDo
	 * @return
	 */
	long add(QrcodeInfoDo qrcodeInfoDo);

	/**
	 * @param cond
	 * @return
	 */
	PageList<QrcodeInfoDo> pageQuery(QrcodeInfoPageCond cond);
}
