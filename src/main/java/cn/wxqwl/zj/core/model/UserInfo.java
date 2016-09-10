package cn.wxqwl.zj.core.model;

import org.apache.commons.lang.StringUtils;

public class UserInfo extends BaseModel {

    /**  */
    private static final long serialVersionUID = 4277525497233066266L;
    private String            uid;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public static enum UserTypeEnum {

        WEB("web", "网页注册"),

        QQ("qq", "qq登陆");

        private String code;

        private String desc;

        private UserTypeEnum(String code, String desc) {
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

        public static UserTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (UserTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

}
