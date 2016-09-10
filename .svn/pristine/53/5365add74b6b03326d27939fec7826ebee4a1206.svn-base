package cn.edu.ntu.jtxy.core.component.wx.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.component.wx.WxMsgComponent;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.result.WxMsgResult;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxMsgComponentImpl.java, v 0.1 2016年4月15日 上午10:01:10 {jin.zhang@witontek.com} Exp $
 */
public class WxMsgComponentImpl implements WxMsgComponent, InitializingBean {

    private static final Logger        logger              = LoggerFactory
                                                               .getLogger(WxMsgComponentImpl.class);

    public static String               REPLY_CONTENT_ERROR = "此服务尚未开通！";

    /** 消息处理器集合*/
    private Map<String, WxMsgExecutor> executors           = new HashMap<String, WxMsgExecutor>();

    /**  */
    private List<WxMsgExecutor>        list;

    @Autowired
    private WeiXinUserRepository       weiXinUserRepository;

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.WxMsgComponent#process(java.util.Map, cn.edu.ntu.jtxy.core.model.wx.AppConfig)
     */
    @Override
    public WxMsgResult process(Map<String, String> xmlParams) {
        logger.info("微信消息处理  xmlParams={}", xmlParams);
        String msgType = xmlParams.get("MsgType");

        WxMsgTypeEnum wxMsgTypeEnum = WxMsgTypeEnum.getByCode(msgType);
        if (wxMsgTypeEnum == null) {
            logger.info("微信消息处理  不支持的消息类型  msgType={}}", msgType);
            return null;
        }
        WxMsgExecutor wxMsgExecutor = executors.get(msgType);
        if (wxMsgExecutor == null) {
            logger.info("微信消息处理  未找到处理器 msgType={}}", msgType);
            return null;
        }
        return wxMsgExecutor.process(xmlParams);
    }

    public static enum WxMsgTypeEnum {

        TEXT("text", "文本"),

        IMAGE("image", "图片"),

        VOICE("voice", "语音"),

        VIDEO("video", "视频"),

        SHORT_VIDEO("shortvideo", "小视频"),

        LOCATION("location", "地理位置消息"),

        LINK("link", " 链接消息"),

        EVENT("event", "事件");

        private String code;

        private String desc;

        private WxMsgTypeEnum(String code, String desc) {
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

        public static WxMsgTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (WxMsgTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        logger.info("微信消息处理  初始化...");
        for (WxMsgExecutor item : list) {
            if (item.getMsgType() != null) {
                this.executors.put(item.getMsgType().getCode(), item);
            }
        }
    }

    /**
     * Getter method for property <tt>list</tt>.
     * 
     * @return property value of list
     */
    public List<WxMsgExecutor> getList() {
        return list;
    }

    /**
     * Setter method for property <tt>list</tt>.
     * 
     * @param list value to be assigned to property list
     */
    public void setList(List<WxMsgExecutor> list) {
        this.list = list;
    }

}
