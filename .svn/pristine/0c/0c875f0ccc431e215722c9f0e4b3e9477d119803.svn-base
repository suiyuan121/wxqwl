package cn.edu.ntu.jtxy.core.model.wx;

import java.util.Date;

import org.apache.commons.lang.StringUtils;

import cn.edu.ntu.jtxy.core.model.BaseModel;

public class PointRecordDo extends BaseModel {

    /**  */
    private static final long serialVersionUID = 2651845301636298902L;

    private long              id;

    private long              pointAcId;

    private String            uid;

    private String            operType;

    private int               amout;

    private String            orderNo;

    private String            memo;

    private Date              createTime;

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
     * Getter method for property <tt>pointAcId</tt>.
     * 
     * @return property value of pointAcId
     */
    public long getPointAcId() {
        return pointAcId;
    }

    /**
     * Setter method for property <tt>pointAcId</tt>.
     * 
     * @param pointAcId value to be assigned to property pointAcId
     */
    public void setPointAcId(long pointAcId) {
        this.pointAcId = pointAcId;
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
     * Getter method for property <tt>operType</tt>.
     * 
     * @return property value of operType
     */
    public String getOperType() {
        return operType;
    }

    /**
     * Setter method for property <tt>operType</tt>.
     * 
     * @param operType value to be assigned to property operType
     */
    public void setOperType(String operType) {
        this.operType = operType;
    }

    /**
     * Getter method for property <tt>amout</tt>.
     * 
     * @return property value of amout
     */
    public int getAmout() {
        return amout;
    }

    /**
     * Setter method for property <tt>amout</tt>.
     * 
     * @param amout value to be assigned to property amout
     */
    public void setAmout(int amout) {
        this.amout = amout;
    }

    /**
     * Getter method for property <tt>orderNo</tt>.
     * 
     * @return property value of orderNo
     */
    public String getOrderNo() {
        return orderNo;
    }

    /**
     * Setter method for property <tt>orderNo</tt>.
     * 
     * @param orderNo value to be assigned to property orderNo
     */
    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    /**
     * Getter method for property <tt>memo</tt>.
     * 
     * @return property value of memo
     */
    public String getMemo() {
        return memo;
    }

    /**
     * Setter method for property <tt>memo</tt>.
     * 
     * @param memo value to be assigned to property memo
     */
    public void setMemo(String memo) {
        this.memo = memo;
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

    public static enum OperTypeEnum {

        ADD("add", "增加"),

        USE("use", "失败");

        private String code;

        private String desc;

        private OperTypeEnum(String code, String desc) {
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

        public static OperTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (OperTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

}
