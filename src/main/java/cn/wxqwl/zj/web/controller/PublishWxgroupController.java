package cn.wxqwl.zj.web.controller;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.biz.service.ResourceService;
import cn.wxqwl.zj.core.component.QrcodeInfoComponent;
import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.dos.LabelDo;
import cn.wxqwl.zj.core.model.dto.QrcodeInfo;
import cn.wxqwl.zj.core.repository.LabelRepository;
import cn.wxqwl.zj.util.SysFileUtils;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.controller.form.PublishQrcodeForm;
import cn.wxqwl.zj.web.filter.OperationContex;

/**
 * 发布微信群
 * 
 * @author 1581128024@qq.com
 * @version $Id: PublishWxgroupController.java, v 0.1 2016年9月4日 上午11:34:43
 *          Administrator Exp $
 */
@Controller
@RequestMapping(value = "publishWxgroup.htm")
public class PublishWxgroupController implements SystemConstants {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(PublishWxgroupController.class);

	private static final String publishWxgroupPage = "publishWxgroup";

	private static final String groupInfoHtm = "groupInfo.htm";

	@Autowired
	private ResourceService resourceService;

	@Autowired
	private QrcodeInfoComponent qrcodeInfoComponent;

	@Autowired
	private LabelRepository labelRepository;

	@RequestMapping(method = RequestMethod.GET)
	public String doGet(ModelMap modelMap) {
		logger.info("发布微信群  doGet");
		List<LabelDo> lableList = labelRepository.getAll();
		modelMap.addAttribute("labelList", lableList);
		return publishWxgroupPage;
	}

	@RequestMapping(method = RequestMethod.POST)
	public String doPost(ModelMap modelMap, PublishQrcodeForm qrcodeForm) {
		String uid = OperationContex.getUid();
		logger.info("发布微信群 doPost qrcodeForm={},uid={}", qrcodeForm, uid);

		String imagePath = "";
		try {
			imagePath = resourceService.getImagePath().getURL().getPath();
		} catch (IOException e) {
			logger.info("读取配置文件图片地址异常 e={}", e);
		}

		String qrcodeUrl = SysFileUtils.copyPicFile(qrcodeForm.getQcode(),
				imagePath);
		String coverUrl = SysFileUtils.copyPicFile(qrcodeForm.getCover(),
				imagePath);

		QrcodeInfo qrcodeInfo = new QrcodeInfo();
		qrcodeInfo.setUid(uid);
		qrcodeInfo.setCoverUrl(coverUrl);
		qrcodeInfo.setDesc(qrcodeForm.getDesc());
		qrcodeInfo.setLabel(qrcodeForm.getLabel());
		qrcodeInfo.setLoc(qrcodeForm.getLoc());
		qrcodeInfo.setName(qrcodeForm.getQrcodeName());
		qrcodeInfo.setWxAccount(qrcodeForm.getOwer());
		qrcodeInfo.setQrcodeUrl(qrcodeUrl);
		BaseResult result = qrcodeInfoComponent.add(qrcodeInfo);

		if (!result.isSuccess()) {
			modelMap.addAttribute("errMsg", result.getErrMsg());
			return publishWxgroupPage;
		}
		return "redirect:" + groupInfoHtm;
	}
}
