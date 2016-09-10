package cn.edu.ntu.jtxy.core.model;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 重写toString，打印日志的时候是对象会打印出详细信息
 * @author {jin.zhang@witontek.com}
 * @version $Id: BaseModel.java, v 0.1 2016年3月14日 下午4:12:56 {jin.zhang@witontek.com} Exp $
 */
public class BaseModel implements Serializable {

    /**  */
    private static final long serialVersionUID = -3883818372837887703L;

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
