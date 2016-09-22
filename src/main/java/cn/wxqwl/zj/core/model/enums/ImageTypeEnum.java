package cn.wxqwl.zj.core.model.enums;

import org.apache.commons.lang.StringUtils;

public enum ImageTypeEnum {

	HEAD("head", "头像"),

	WXGROUP("wxgroup", "微信群"),

	WXCHAT("wxchat", "个人微信号"),

	WXPUBLIC("wxpublic", "微信公众号");

	private String code;

	private String desc;

	private ImageTypeEnum(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	/**
	 * Getter method for property <tt>code</tt>.
	 * 
	 * @return property value of code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * Setter method for property <tt>code</tt>.
	 * 
	 * @param code
	 *            value to be assigned to property code
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * Getter method for property <tt>desc</tt>.
	 * 
	 * @return property value of desc
	 */
	public String getDesc() {
		return desc;
	}

	/**
	 * Setter method for property <tt>desc</tt>.
	 * 
	 * @param desc
	 *            value to be assigned to property desc
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}

	public static ImageTypeEnum getByCode(String code) {
		if (StringUtils.isEmpty(code)) {
			return null;
		}
		for (ImageTypeEnum item : values()) {
			if (StringUtils.equals(item.getCode(), code)) {
				return item;
			}
		}
		return null;
	}
}
