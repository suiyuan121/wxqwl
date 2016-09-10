package cn.edu.ntu.jtxy.core.repository;

import org.apache.commons.lang.StringUtils;

/**
 * 结果码
 * @author {jin.zhang@witontek.com}
 * @version $Id: ResultCodeEnum.java, v 0.1 2016年3月14日 下午5:21:01 {jin.zhang@witontek.com} Exp $
 */
public enum ResultCodeEnum {

    ILLEGAL_ARGUMENT("ILLEGAL_ARGUMENT", "参数错误"),

    VERIFY_FAIL("VERIFY_FAIL", "验证失败"),

    DUPLICATEKEY("DUPLICATEKEY", "主键冲突"),

    系统错误("system_error", "系统错误"),

    未关注("not_subscribe", "未关注"),

    移动分组失败("error_move_group", "移动分组失败"),

    //    ..
    ;

    /**  */
    private String code;

    /**  */
    private String desc;

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

    private ResultCodeEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    /**
     * 
     * @param code
     * @return
     */
    public static ResultCodeEnum getByCode(String code) {

        if (StringUtils.isBlank(code)) {
            return null;
        }
        for (ResultCodeEnum item : ResultCodeEnum.values()) {
            if (StringUtils.equals(code, item.code)) {
                return item;
            }
        }
        return null;
    }
}
