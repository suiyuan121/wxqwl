package cn.edu.ntu.jtxy.core.component.wx.MsgExecutor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.event.EventMsgExecutor;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.result.WxMsgResult;
import cn.edu.ntu.jtxy.core.component.wx.impl.WxMsgComponentImpl.WxMsgTypeEnum;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxEventMsgExecutor.java, v 0.1 2016年4月15日 下午1:28:03 {jin.zhang@witontek.com} Exp $
 */
public class WxEventMsgExecutor implements WxMsgExecutor, InitializingBean {

    private static final Logger           logger    = LoggerFactory
                                                        .getLogger(WxEventMsgExecutor.class);

    /**  */
    private Map<String, EventMsgExecutor> executors = new HashMap<String, EventMsgExecutor>();

    /**  */
    private List<EventMsgExecutor>        list;

    /**  */
    @Autowired
    private EventMsgExecutor              wxDefaultEventMsgExecutor;

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor#process(java.util.Map)
     */
    @Override
    public WxMsgResult process(Map<String, String> xmlParams) {
        logger.info("微信事件消息处理器   xmlParams={} ", xmlParams);
        String eventType = xmlParams.get("Event");
        WxEventTypeEnum eventTypeEnum = WxEventTypeEnum.getByCode(eventType);
        if (eventTypeEnum == null) {
            logger.info("微信事件消息处理器 -事件类型不支持  eventType={} ", eventType);
            return null;
        }
        EventMsgExecutor eventMsgExecutor = executors.get(eventType);
        if (eventMsgExecutor == null) {
            return wxDefaultEventMsgExecutor.process(xmlParams);
        }
        return eventMsgExecutor.process(xmlParams);
    }

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor#getMsgType()
     */
    @Override
    public WxMsgTypeEnum getMsgType() {
        return WxMsgTypeEnum.EVENT;
    }

    public static enum WxEventTypeEnum {

        SUBSCRIBE("subscribe", "订阅"),

        UNSUBSCRIBE("unsubscribe", "取消取消订阅"),

        LOCATION("LOCATION", "上报地理位置"),

        CLICK("CLICK", "点击"),

        DEFAULT("DEFAULT", "默认"),

        VIEW("VIEW", "查看");

        private String code;

        private String desc;

        private WxEventTypeEnum(String code, String desc) {
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

        public static WxEventTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (WxEventTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        logger.info("微信事件消息处理器  初始化 list={} ", list);
        for (EventMsgExecutor item : list) {
            if (item.getEventType() != null) {
                executors.put(item.getEventType().getCode(), item);
            }
        }

    }

    /**
     * Getter method for property <tt>list</tt>.
     * 
     * @return property value of list
     */
    public List<EventMsgExecutor> getList() {
        return list;
    }

    /**
     * Setter method for property <tt>list</tt>.
     * 
     * @param list value to be assigned to property list
     */
    public void setList(List<EventMsgExecutor> list) {
        this.list = list;
    }

}
