package cn.wxqwl.zj.core.dao;

import cn.wxqwl.zj.core.model.dos.ImageInfoDo;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: ImageInfoDao.java, v 0.1 2016年9月1日 下午3:23:32 Administrator Exp
 *          $
 */
public interface ImageInfoDao {

	long add(ImageInfoDo imageInfoDo);

	ImageInfoDo getById(long id);
}
