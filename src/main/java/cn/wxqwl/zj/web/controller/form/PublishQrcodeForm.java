package cn.wxqwl.zj.web.controller.form;

import org.springframework.web.multipart.MultipartFile;

import cn.wxqwl.zj.core.model.BaseModel;

/**
 * @author 1581128024@qq.com
 * 
 */
public class PublishQrcodeForm extends BaseModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6353740735471285719L;

	private String qrcodeName;

	private String ower;

	private String label;

	private String loc;

	private MultipartFile qcode;

	private MultipartFile cover;

	private String desc;

	public String getQrcodeName() {
		return qrcodeName;
	}

	public void setQrcodeName(String qrcodeName) {
		this.qrcodeName = qrcodeName;
	}

	public String getOwer() {
		return ower;
	}

	public void setOwer(String ower) {
		this.ower = ower;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public MultipartFile getQcode() {
		return qcode;
	}

	public void setQcode(MultipartFile qcode) {
		this.qcode = qcode;
	}

	public MultipartFile getCover() {
		return cover;
	}

	public void setCover(MultipartFile cover) {
		this.cover = cover;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
