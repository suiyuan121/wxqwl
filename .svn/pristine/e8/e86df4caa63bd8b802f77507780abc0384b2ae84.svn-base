package cn.edu.ntu.jtxy.core.repository.wx.impl;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;

import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxAppConfigRepositoryImpl.java, v 0.1 2016年3月14日 下午4:25:27 {jin.zhang@witontek.com} Exp $
 */
public class WxAppConfigRepositoryImpl implements WxAppConfigRepository, InitializingBean {

    /**  */
    private static final Logger    logger  = LoggerFactory
                                               .getLogger(WxAppConfigRepositoryImpl.class);

    private Map<String, AppConfig> configs = new HashMap<String, AppConfig>();

    @Override
    public AppConfig getDefault() {
        return configs.get("ntujtxy");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        logger.info("微信配置信息加载初始化  ....");
        //后期可配置到数据库，此处是加载到内存中
        AppConfig appConfig = new AppConfig();
        appConfig.setToken("ntujtxywx");
        appConfig.setAppId("wx152525e38936f96d");
        appConfig.setAppSecret("e18811d929ddb03e366c54f1e00987a3");
        appConfig.setAseKey("amQR9YRa0ieSmNLaXfzlWDdbluYr84NbacJx2WbwIVU");
        appConfig.setServerUrl("http://www.ntujtxy.top/ntujtxy");
        configs.put("ntujtxy", appConfig);
        logger.info("微信配置信息加载完毕     configs={}", configs);

    }
}
