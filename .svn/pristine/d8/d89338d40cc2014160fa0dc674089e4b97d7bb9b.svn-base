package cn.edu.ntu.jtxy.task.wx;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.task.Task;

/**
 * 同步微信素材定时任务
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxNewsSyncTask.java, v 0.1 2016年4月29日 下午3:36:59 {jin.zhang@witontek.com} Exp $
 */
public class WxNewsSyncTask implements Task {

    /**  */
    private static final Logger    logger = LoggerFactory.getLogger(WxNewsSyncTask.class);

    @Autowired
    private WxClient               wxClient;

    @Autowired
    private RefreshTokenRepository refreshTokenRepository;

    @Autowired
    private WxAppConfigRepository  wxAppConfigRepository;

    @Override
    public void execute() {
        logger.info("微信图文同步  start.......");

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("微信刷新token 获取微信配置信息失败");
            return;
        }

        logger.info("微信图文同步   end.......");
    }
}
