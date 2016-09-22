package cn.wxqwl.zj.core.repository.convert;

import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.model.dto.QrcodeInfo;

public class QrcodeInfoConvert {

	/**
	 * @param qrcodeInfo
	 * @return
	 */
	public static QrcodeInfoDo convert(QrcodeInfo qrcodeInfo) {

		if (qrcodeInfo == null) {
			return null;
		}
		QrcodeInfoDo qrcodeInfoDo = new QrcodeInfoDo();
		qrcodeInfoDo.setUid(qrcodeInfo.getUid());
		qrcodeInfoDo.setDesc(qrcodeInfo.getDesc());
		qrcodeInfoDo.setLabel(qrcodeInfo.getLabel());
		qrcodeInfoDo.setName(qrcodeInfo.getName());
		qrcodeInfoDo.setWxAccount(qrcodeInfo.getWxAccount());

		return qrcodeInfoDo;
	}

	/**
	 * @param qrcodeInfoDo
	 * @return
	 */
	public static QrcodeInfo convert(QrcodeInfoDo qrcodeInfoDo) {

		if (qrcodeInfoDo == null) {
			return null;
		}
		QrcodeInfo qrcodeInfo = new QrcodeInfo();
		qrcodeInfo.setDesc(qrcodeInfoDo.getDesc());
		qrcodeInfo.setLabel(qrcodeInfoDo.getLabel());
		qrcodeInfo.setName(qrcodeInfoDo.getName());
		qrcodeInfo.setUid(qrcodeInfoDo.getUid());
		qrcodeInfo.setWxAccount(qrcodeInfoDo.getWxAccount());

		return qrcodeInfo;

	}
}
