package cn.edu.ntu.jtxy.core.model.wx;

import java.util.Date;

import org.apache.commons.lang.StringUtils;

import cn.edu.ntu.jtxy.core.model.BaseModel;

public class PointDo extends BaseModel {

    /**  */
    private static final long serialVersionUID = 7364359469634762667L;

    private long              id;

    private String            uid;
    /** 积分类型 */
    private String            pointType;

    private int               pointAmout;

    private String            status;

    private Date              createTime;

    private Date              modifyTime;

    /**
     * Getter method for property <tt>id</tt>.
     * 
     * @return property value of id
     */
    public long getId() {
        return id;
    }

    /**
     * Setter method for property <tt>id</tt>.
     * 
     * @param id value to be assigned to property id
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * Getter method for property <tt>uid</tt>.
     * 
     * @return property value of uid
     */
    public String getUid() {
        return uid;
    }

    /**
     * Setter method for property <tt>uid</tt>.
     * 
     * @param uid value to be assigned to property uid
     */
    public void setUid(String uid) {
        this.uid = uid;
    }

    /**
     * Getter method for property <tt>pointType</tt>.
     * 
     * @return property value of pointType
     */
    public String getPointType() {
        return pointType;
    }

    /**
     * Setter method for property <tt>pointType</tt>.
     * 
     * @param pointType value to be assigned to property pointType
     */
    public void setPointType(String pointType) {
        this.pointType = pointType;
    }

    /**
     * Getter method for property <tt>pointAmout</tt>.
     * 
     * @return property value of pointAmout
     */
    public int getPointAmout() {
        return pointAmout;
    }

    /**
     * Setter method for property <tt>pointAmout</tt>.
     * 
     * @param pointAmout value to be assigned to property pointAmout
     */
    public void setPointAmout(int pointAmout) {
        this.pointAmout = pointAmout;
    }

    /**
     * Getter method for property <tt>status</tt>.
     * 
     * @return property value of status
     */
    public String getStatus() {
        return status;
    }

    /**
     * Setter method for property <tt>status</tt>.
     * 
     * @param status value to be assigned to property status
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * Getter method for property <tt>createTime</tt>.
     * 
     * @return property value of createTime
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * Setter method for property <tt>createTime</tt>.
     * 
     * @param createTime value to be assigned to property createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * Getter method for property <tt>modifyTime</tt>.
     * 
     * @return property value of modifyTime
     */
    public Date getModifyTime() {
        return modifyTime;
    }

    /**
     * Setter method for property <tt>modifyTime</tt>.
     * 
     * @param modifyTime value to be assigned to property modifyTime
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public static enum StatusEnum {

        ENABLE("enable", "有效"),

        DISABLE("disable", "无效");

        private String code;

        private String desc;

        private StatusEnum(String code, String desc) {
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
         * @param code value to be assigned to property code
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
         * @param desc value to be assigned to property desc
         */
        public void setDesc(String desc) {
            this.desc = desc;
        }

        public static StatusEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (StatusEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

    public static enum PointTypeEnum {

        SIGN("sign", "签到积分"),

        UPLOAD_WORK("upload_work", "上传作品");

        private String code;

        private String desc;

        private PointTypeEnum(String code, String desc) {
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
         * @param code value to be assigned to property code
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
         * @param desc value to be assigned to property desc
         */
        public void setDesc(String desc) {
            this.desc = desc;
        }

        public static PointTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (PointTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }
}
