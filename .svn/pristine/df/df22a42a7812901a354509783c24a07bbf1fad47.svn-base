package cn.edu.ntu.jtxy.web.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import cn.edu.ntu.jtxy.core.component.wx.WxMsgComponent;
import cn.edu.ntu.jtxy.core.component.wx.MsgExecutor.result.WxMsgResult;
import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.util.WeiXinUtil;

import com.qq.weixin.map.aes.AesException;
import com.qq.weixin.map.aes.XMLParse;

/**
 * 微信消息接收网关
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxServiceServlet.java, v 0.1 2016年3月14日 下午1:35:17 {jin.zhang@witontek.com} Exp $
 */
public class WxServiceServlet extends HttpServlet {

    /**  */
    private static final long     serialVersionUID = 3602098526387480488L;
    /**  */
    private static final Logger   logger           = LoggerFactory
                                                       .getLogger(WxServiceServlet.class);

    /** 加解密类型  aes */
    private static final String   ENCRYPT_TYPE     = "aes";

    /** xml请求报文最大读取行数 */
    public static final int       MAX_LINE_SIZE    = 1024;

    @Autowired
    private WxAppConfigRepository wxAppConfigRepository;

    @Autowired
    private WxMsgComponent        wxMsgComponent;

    /** 
     * @see javax.servlet.GenericServlet#init()
     */
    @Override
    public void init() throws ServletException {
        super.init();
        SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);

    }

    /**
     * Default constructor. 
     */
    public WxServiceServlet() {
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                                                                  throws ServletException,
                                                                                  IOException {
        logger.info("微信网关  doGet");

        String signature = request.getParameter("signature");
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");
        String echostr = request.getParameter("echostr");

        logger.info("微信网关  doGet signature={},timestamp={},nonce={},echostr={}", signature,
            timestamp, nonce, echostr);

        if (StringUtils.isBlank(signature) || StringUtils.isBlank(timestamp)
            || StringUtils.isBlank(nonce) || StringUtils.isBlank(echostr)) {
            response.getWriter().write(ResultCodeEnum.ILLEGAL_ARGUMENT.getCode());
            logger.warn("微信网关  doGet  接收参数错误");
            return;
        }
        AppConfig appConfig = wxAppConfigRepository.getDefault();
        String token = appConfig.getToken();

        //默认为验证不成功
        boolean verifyResult = false;
        try {
            verifyResult = WeiXinUtil.verifyUrl(signature, timestamp, nonce, token);
            logger.info("微信网关doGet 验证结果verifyResult={}", verifyResult);

            if (verifyResult) {
                logger.info("微信网关doGet 验证成功");
                response.getWriter().write(echostr);
                return;
            }
            response.getWriter().write(ResultCodeEnum.VERIFY_FAIL.getCode());
            return;

        } catch (AesException e) {
            logger.error("微信网关doGet验证异常", e);
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                                                                   throws ServletException,
                                                                                   IOException {
        logger.info("微信网关  doPost");
        String signature = request.getParameter("signature");
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");

        String encrypt_type = request.getParameter("encrypt_type");
        String msg_signature = request.getParameter("msg_signature");
        logger.warn("微信网关  signature={},timestamp={},nonce={},encrypt_type={},msg_signature={}",
            signature, timestamp, nonce, encrypt_type, msg_signature);

        if (StringUtils.isBlank(signature) || StringUtils.isBlank(timestamp)
            || StringUtils.isBlank(nonce)) {
            response.getWriter().write(ResultCodeEnum.ILLEGAL_ARGUMENT.getCode());
            logger.warn("微信网关  doPost  接收参数错误");
            return;
        }

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        String token = appConfig.getToken();
        //默认为验证不成功
        boolean verifyResult = false;

        String retXml = "";
        try {

            //验证签名
            verifyResult = WeiXinUtil.verifyUrl(signature, timestamp, nonce, token);
            logger.info("微信网关doPost 验证结果verifyResult={}", verifyResult);
            if (!verifyResult) {
                logger.info("微信网关doPost 验证失败");
                return;
            }

            String content = getContent(request.getReader());
            logger.info("微信网关doPost 接收 content={}", content);

            if (StringUtils.equals(ENCRYPT_TYPE, encrypt_type)) {
                logger.info("微信网关doPost 加密 content={}", content);
                // aes 加密
                Object[] msgList = XMLParse.extract(content);
                String encryptText = (String) msgList[1];
                logger.info("【解密密文】=\n{}", encryptText);

                // 验证签名 & 解密密文
                String plainText = WeiXinUtil.verifyDecryptMsg(appConfig.getAppId(),
                    appConfig.getToken(), appConfig.getAseKey(), msg_signature, timestamp, nonce,
                    encryptText);
                logger.info("【解密明文】=\n{}", plainText);

                Map<String, String> xmlParams = WeiXinUtil.parse(plainText);

                String xml = process(xmlParams, request);
                logger.info("【返回给微信明文】xml=\n{}", xml);

                // 需要返回报文，进行加密后发送
                if (StringUtils.isNotBlank(xml)) {
                    retXml = WeiXinUtil.encryptAndSign(appConfig.getAppId(), appConfig.getAseKey(),
                        xml, appConfig.getToken(), nonce);
                }
            } else {
                logger.info("微信网关doGet 不加密 ，明文 content={}", content);
                Map<String, String> xmlParams = WeiXinUtil.parse(content);
                retXml = process(xmlParams, request);
            }

        } catch (AesException e) {
            logger.error("微信网关doGet验证异常", e);
        } catch (Exception e) {
            logger.error("微信网关doGet 消息处理异常", e);
        }

        // 返回处理结果
        if (StringUtils.isNotBlank(retXml)) {
            logger.info("【最终返回】xml=\n{}", retXml);
            response.getWriter().write(retXml);
        } else {
            response.getWriter().write(StringUtils.EMPTY);
        }
        return;
    }

    private String process(Map<String, String> xmlParams, HttpServletRequest request) {
        String ToUserName = xmlParams.get("ToUserName");
        String FromUserName = xmlParams.get("FromUserName");
        WxMsgResult msgResult = wxMsgComponent.process(xmlParams);
        logger.info("微信消息处理结果   msgResult={}", msgResult);
        if (msgResult == null) {
            return null;
        }

        return WeiXinUtil.getTextReply(FromUserName, ToUserName, msgResult.getContent());

    }

    /**
     * 
     * @param reader
     * @return
     * @throws IOException
     */
    private String getContent(BufferedReader reader) throws IOException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < MAX_LINE_SIZE; i++) {
            String line = reader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        return sb.toString();
    }

}
