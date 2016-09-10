package cn.edu.ntu.jtxy.core.component.wx.MsgExecutor;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.component.wx.WeiXinUserComponent;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.result.WxMsgResult;
import cn.edu.ntu.jtxy.core.component.wx.impl.WxMsgComponentImpl.WxMsgTypeEnum;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxTextMsgExecutor.java, v 0.1 2016年4月15日 上午11:04:51 {jin.zhang@witontek.com} Exp $
 */
public class WxTextMsgExecutor implements WxMsgExecutor {

    private static final Logger logger = LoggerFactory.getLogger(WxTextMsgExecutor.class);

    @Autowired
    private WeiXinUserComponent weiXinUserComponent;

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor#process(java.util.Map)
     */
    @Override
    public WxMsgResult process(Map<String, String> xmlParams) {
        logger.info("微信图文消息处理器   xmlParams={} ", xmlParams);
        String openId = xmlParams.get("FromUserName");
        //不用关心订阅结果
        weiXinUserComponent.subscribe(openId);
        WxMsgResult result = new WxMsgResult();
        result.setWxMsgType(WxMsgTypeEnum.TEXT);
        result.setContent("系统正在开发中....");
        return result;
    }

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.WxMsgExecutor#getMsgType()
     */
    @Override
    public WxMsgTypeEnum getMsgType() {
        return WxMsgTypeEnum.TEXT;
    }

}
