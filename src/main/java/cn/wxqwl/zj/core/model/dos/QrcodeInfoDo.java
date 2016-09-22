package cn.wxqwl.zj.core.model.dos;

import java.util.Date;

import cn.wxqwl.zj.core.model.BaseModel;

public class QrcodeInfoDo extends BaseModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 617945993520537569L;

	private long id;
	private String uid;
	private String type;
	private long imageId;
	private long coverId;
	private String wxAccount;
	private String name;
	private String status;
	private String desc;
	private long locId;
	private String label;
	private String publicType;
	private Date gmtCreate;
	private Date gmtModify;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getImageId() {
		return imageId;
	}

	public void setImageId(long imageId) {
		this.imageId = imageId;
	}

	public long getCoverId() {
		return coverId;
	}

	public void setCoverId(long coverId) {
		this.coverId = coverId;
	}

	public String getWxAccount() {
		return wxAccount;
	}

	public void setWxAccount(String wxAccount) {
		this.wxAccount = wxAccount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public long getLocId() {
		return locId;
	}

	public void setLocId(long locId) {
		this.locId = locId;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getPublicType() {
		return publicType;
	}

	public void setPublicType(String publicType) {
		this.publicType = publicType;
	}

	public Date getGmtCreate() {
		return gmtCreate;
	}

	public void setGmtCreate(Date gmtCreate) {
		this.gmtCreate = gmtCreate;
	}

	public Date getGmtModify() {
		return gmtModify;
	}

	public void setGmtModify(Date gmtModify) {
		this.gmtModify = gmtModify;
	}

}
