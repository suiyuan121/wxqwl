package cn.wxqwl.zj.core.repository.cond;

import cn.wxqwl.zj.core.model.enums.ImageTypeEnum;
import cn.wxqwl.zj.core.repository.pagelist.BasePageQueryCond;

public class QrcodeInfoPageCond extends BasePageQueryCond {

	/**
	 * 
	 */
	private static final long serialVersionUID = 696177081932328014L;

	/**
	 * 是微信群还是公众号
	 */
	private ImageTypeEnum type;

	private String uid;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public ImageTypeEnum getType() {
		return type;
	}

	public void setType(ImageTypeEnum type) {
		this.type = type;
	}

}
