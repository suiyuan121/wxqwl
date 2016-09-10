package cn.edu.ntu.jtxy.core.model.wx;

import java.util.Date;

import org.apache.commons.lang.StringUtils;

import cn.edu.ntu.jtxy.core.model.BaseModel;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WeiXinUserDo.java, v 0.1 2016年3月30日 下午1:40:46 {jin.zhang@witontek.com} Exp $
 */
public class WeiXinUserDo extends BaseModel {

    /**  */
    private static final long serialVersionUID = -4415861711074719872L;

    private long              id;

    private String            appId;

    private String            openId;

    private String            subscribe;

    private String            nickName;

    private String            unionId;
    /** 头像地址 */
    private String            headImageUrl;
    /**  冗余字段，json格式*/
    private String            props;

    private Date              createTime;

    private Date              modifyTime;

    /**
     * Getter method for property <tt>subscribe</tt>.
     * 
     * @return property value of subscribe
     */
    public String getSubscribe() {
        return subscribe;
    }

    /**
     * Setter method for property <tt>subscribe</tt>.
     * 
     * @param subscribe value to be assigned to property subscribe
     */
    public void setSubscribe(String subscribe) {
        this.subscribe = subscribe;
    }

    /**
     * Getter method for property <tt>nickName</tt>.
     * 
     * @return property value of nickName
     */
    public String getNickName() {
        return nickName;
    }

    /**
     * Setter method for property <tt>nickName</tt>.
     * 
     * @param nickName value to be assigned to property nickName
     */
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

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
     * Getter method for property <tt>appId</tt>.
     * 
     * @return property value of appId
     */
    public String getAppId() {
        return appId;
    }

    /**
     * Setter method for property <tt>appId</tt>.
     * 
     * @param appId value to be assigned to property appId
     */
    public void setAppId(String appId) {
        this.appId = appId;
    }

    /**
     * Getter method for property <tt>openId</tt>.
     * 
     * @return property value of openId
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * Setter method for property <tt>openId</tt>.
     * 
     * @param openId value to be assigned to property openId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * Getter method for property <tt>unionId</tt>.
     * 
     * @return property value of unionId
     */
    public String getUnionId() {
        return unionId;
    }

    /**
     * Setter method for property <tt>unionId</tt>.
     * 
     * @param unionId value to be assigned to property unionId
     */
    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    /**
     * Getter method for property <tt>headImageUrl</tt>.
     * 
     * @return property value of headImageUrl
     */
    public String getHeadImageUrl() {
        return headImageUrl;
    }

    /**
     * Setter method for property <tt>headImageUrl</tt>.
     * 
     * @param headImageUrl value to be assigned to property headImageUrl
     */
    public void setHeadImageUrl(String headImageUrl) {
        this.headImageUrl = headImageUrl;
    }

    /**
     * Getter method for property <tt>props</tt>.
     * 
     * @return property value of props
     */
    public String getProps() {
        return props;
    }

    /**
     * Setter method for property <tt>props</tt>.
     * 
     * @param props value to be assigned to property props
     */
    public void setProps(String props) {
        this.props = props;
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

    public static enum GroupIdEnum {

        YEAR_1("106", "大一"),

        YEAR_2("107", "大二"),

        YEAR_3("108", "大三"),

        YEAR_4("109", "大四"),

        GRAGUATION("110", "毕业生");

        private String code;

        private String desc;

        private GroupIdEnum(String code, String desc) {
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

        public static GroupIdEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (GroupIdEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

    public static enum SubscribeEnum {

        Y("Y", "是"),

        N("N", "否");

        private String code;

        private String desc;

        private SubscribeEnum(String code, String desc) {
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

        public static SubscribeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (SubscribeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }
}
