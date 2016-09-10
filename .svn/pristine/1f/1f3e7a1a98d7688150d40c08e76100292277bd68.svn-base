package cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.event;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.component.wx.WeiXinUserComponent;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxEventMsgExecutor.WxEventTypeEnum;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.result.WxMsgResult;
import cn.edu.ntu.jtxy.core.component.wx.impl.WxMsgComponentImpl.WxMsgTypeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxClickEventMsgExecutor.java, v 0.1 2016年4月20日 上午9:23:14 {jin.zhang@witontek.com} Exp $
 */
public class WxClickEventMsgExecutor extends EventMsgExecutor {

    private static final Logger logger = LoggerFactory.getLogger(WxSubscribeEventMsgExecutor.class);

    @Autowired
    private UserInfoRepository  userInfoRepository;

    @Autowired
    private WeiXinUserComponent weiXinUserComponent;

    @Override
    public WxMsgResult process(Map<String, String> xmlParams) {
        logger.info("微信点击事件消息处理器   xmlParams={} ", xmlParams);

        String openId = xmlParams.get("FromUserName");
        //不用关心订阅结果
        weiXinUserComponent.subscribe(openId);
        return null;
    }

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor#getMsgType()
     */
    @Override
    public WxMsgTypeEnum getMsgType() {
        return WxMsgTypeEnum.EVENT;
    }

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.event.EventMsgExecutor#getEventType()
     */
    public WxEventTypeEnum getEventType() {
        return WxEventTypeEnum.CLICK;
    }

    public static enum WxEventKeyTypeEnum {

        UNBIND("unbind", "解绑");

        private String code;

        private String desc;

        private WxEventKeyTypeEnum(String code, String desc) {
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

        public static WxEventKeyTypeEnum getByCode(String code) {
            if (StringUtils.isEmpty(code)) {
                return null;
            }
            for (WxEventKeyTypeEnum item : values()) {
                if (StringUtils.equals(item.getCode(), code)) {
                    return item;
                }
            }
            return null;
        }
    }
}
