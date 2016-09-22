package cn.wxqwl.zj.core.repository;

import cn.wxqwl.zj.core.model.dos.ImageInfoDo;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: ImageInfoRepository.java, v 0.1 2016年9月1日 下午3:35:46
 *          Administrator Exp $
 */
public interface ImageInfoRepository {

	/**
	 * 
	 * @param imageInfoDo
	 * @return
	 */
	long add(ImageInfoDo imageInfoDo);

	/**
	 * @param id
	 * @return
	 */
	ImageInfoDo getById(long id);
}
