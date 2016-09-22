package cn.wxqwl.zj.core.component.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import cn.wxqwl.zj.core.ResultCodeEnum;
import cn.wxqwl.zj.core.component.QrcodeInfoComponent;
import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.dos.ImageInfoDo;
import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.model.dto.QrcodeInfo;
import cn.wxqwl.zj.core.model.enums.ImageTypeEnum;
import cn.wxqwl.zj.core.model.enums.StatusEnum;
import cn.wxqwl.zj.core.repository.ImageInfoRepository;
import cn.wxqwl.zj.core.repository.QrcodeInfoRepository;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: UserComponentImpl.java, v 0.1 2016年9月1日 下午2:13:06 Administrator
 *          Exp $
 */
public class QrcodeInfoComponentImpl implements QrcodeInfoComponent {

	private static final Logger logger = LoggerFactory
			.getLogger(QrcodeInfoComponentImpl.class);

	@Autowired
	private TransactionTemplate transactionTemplate;

	@Autowired
	private ImageInfoRepository imageInfoRepository;

	@Autowired
	private QrcodeInfoRepository qrcodeInfoRepository;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * cn.wxqwl.zj.core.component.QrcodeInfoComponent#add(cn.wxqwl.zj.core.model
	 * .dto.QrcodeInfo)
	 */
	@Override
	public BaseResult add(final QrcodeInfo qrcodeInfo) {
		logger.info(String.format("用户二维码  qrcodeInfo=%s", qrcodeInfo));
		final BaseResult result = new BaseResult();
		if (qrcodeInfo == null) {
			result.setSuccess(false);
		}

		return transactionTemplate
				.execute(new TransactionCallback<BaseResult>() {

					@Override
					public BaseResult doInTransaction(TransactionStatus status) {
						try {
							String qrcodeUrl = qrcodeInfo.getQrcodeUrl();
							ImageInfoDo imageInfoDo = new ImageInfoDo();
							imageInfoDo.setUid(qrcodeInfo.getUid());
							imageInfoDo.setStatus(StatusEnum.ENABLE.getCode());
							imageInfoDo.setType(ImageTypeEnum.HEAD.getCode());
							imageInfoDo.setUrl(qrcodeUrl);
							long qrcodeId = imageInfoRepository
									.add(imageInfoDo);

							String coverUrl = qrcodeInfo.getCoverUrl();
							imageInfoDo.setUrl(coverUrl);
							long coverId = imageInfoRepository.add(imageInfoDo);
							// 新增二维码
							QrcodeInfoDo qrcodeInfoDo = new QrcodeInfoDo();
							qrcodeInfoDo.setCoverId(coverId);
							qrcodeInfoDo.setUid(qrcodeInfo.getUid());
							qrcodeInfoDo.setDesc(qrcodeInfo.getDesc());
							qrcodeInfoDo.setImageId(qrcodeId);
							qrcodeInfoDo.setLabel(qrcodeInfo.getLabel());
							qrcodeInfoDo.setLocId(Long.valueOf(qrcodeInfo
									.getLoc()));
							qrcodeInfoDo.setName(qrcodeInfo.getName());
							// qrcodeInfoDo.setPublicType(null);
							qrcodeInfoDo.setType(ImageTypeEnum.WXGROUP
									.getCode());
							qrcodeInfoDo.setStatus(StatusEnum.ENABLE.getCode());
							qrcodeInfoDo.setWxAccount(qrcodeInfo.getWxAccount());
							qrcodeInfoRepository.add(qrcodeInfoDo);

							result.setSuccess(true);
						} catch (Exception e2) {
							logger.error(String.format(
									"新增二维码失败  qrcodeInfo=%s ", qrcodeInfo), e2);
							status.setRollbackOnly();
							result.setSuccess(false);
							result.setCode(ResultCodeEnum.系统错误.getCode());
						}
						return result;
					}
				});
	}
}
