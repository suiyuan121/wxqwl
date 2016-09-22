package cn.wxqwl.zj.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wxqwl.zj.core.model.dos.ImageInfoDo;
import cn.wxqwl.zj.core.model.dos.QrcodeInfoDo;
import cn.wxqwl.zj.core.model.dto.QrcodeInfo;
import cn.wxqwl.zj.core.model.enums.ImageTypeEnum;
import cn.wxqwl.zj.core.repository.ImageInfoRepository;
import cn.wxqwl.zj.core.repository.QrcodeInfoRepository;
import cn.wxqwl.zj.core.repository.cond.QrcodeInfoPageCond;
import cn.wxqwl.zj.core.repository.convert.QrcodeInfoConvert;
import cn.wxqwl.zj.core.repository.pagelist.PageList;
import cn.wxqwl.zj.util.SysFileUtils;

/**
 * @author zhangjin
 * 
 */
@Controller
@RequestMapping(value = "index.htm")
public class IndexController {
	/**  */

	private static Logger logger = LoggerFactory
			.getLogger(IndexController.class);

	private static final String indexPage = "index";

	@Autowired
	private ImageInfoRepository imageInfoRepository;

	@Autowired
	private QrcodeInfoRepository qrcodeInfoRepository;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(method = RequestMethod.GET)
	public String doGet(ModelMap map, HttpServletRequest request) {
		logger.info("测试   ");

		// 取微信群
		QrcodeInfoPageCond cond = new QrcodeInfoPageCond();
		cond.setCurrentPage(1);
		cond.setPageSize(6);
		cond.setType(ImageTypeEnum.WXGROUP);
		PageList<QrcodeInfoDo> wxGroupList = qrcodeInfoRepository
				.pageQuery(cond);

		List groupList = new ArrayList();
		for (QrcodeInfoDo item : wxGroupList.getResultList()) {
			ImageInfoDo coverImage = imageInfoRepository.getById(item
					.getCoverId());
			ImageInfoDo qrcodeImage = imageInfoRepository.getById(item
					.getImageId());

			QrcodeInfo info = QrcodeInfoConvert.convert(item);

			// 设置微信群封面的临时路径
			info.setCoverUrl(SysFileUtils.getTempImageUrl(coverImage.getUrl(),
					request));
			// 设置微信群二维码的临时路径
			info.setQrcodeUrl(SysFileUtils.getTempImageUrl(
					qrcodeImage.getUrl(), request));

			groupList.add(info);
		}
		wxGroupList.setResultList(groupList);
		map.addAttribute("wxGroupList", wxGroupList);

		// 取公众号
		cond.setType(ImageTypeEnum.WXPUBLIC);
		PageList<QrcodeInfoDo> wxPublicList = qrcodeInfoRepository
				.pageQuery(cond);

		List publicList = new ArrayList();
		for (QrcodeInfoDo item : wxPublicList.getResultList()) {
			ImageInfoDo coverImage = imageInfoRepository.getById(item
					.getCoverId());
			ImageInfoDo qrcodeImage = imageInfoRepository.getById(item
					.getImageId());

			QrcodeInfo info = QrcodeInfoConvert.convert(item);
			// 设置微信群封面的临时路径
			info.setCoverUrl(SysFileUtils.getTempImageUrl(coverImage.getUrl(),
					request));
			// 设置微信群二维码的临时路径
			info.setQrcodeUrl(SysFileUtils.getTempImageUrl(
					qrcodeImage.getUrl(), request));

			publicList.add(info);
		}
		wxPublicList.setResultList(publicList);
		map.addAttribute("wxPublicList", wxPublicList);

		return indexPage;
	}
}
