package cn.edu.ntu.jtxy.task.wx;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.RefreshTokenCond;
import cn.edu.ntu.jtxy.task.Task;
import cn.edu.ntu.jtxy.util.DateUtil;

/**
 *微信access_token 定时刷新 
 * @author {jin.zhang@witontek.com}
 * @version $Id: AccessTokenRefreshTask.java, v 0.1 2016年3月17日 下午1:40:38 {jin.zhang@witontek.com} Exp $
 */
public class WxAccessTokenRefreshTask implements Task {

    /**  */
    private static final Logger    logger      = LoggerFactory
                                                   .getLogger(WxAccessTokenRefreshTask.class);

    /**  十五分钟失效的*/
    private static final int       EXPIRE_TIME = 10;

    @Autowired
    private WxClient               wxClient;

    @Autowired
    private RefreshTokenRepository refreshTokenRepository;

    @Autowired
    private WxAppConfigRepository  wxAppConfigRepository;

    @Override
    public void execute() {
        logger.info("微信access_token定时刷新  start.......");

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("微信刷新token 获取微信配置信息失败");
            return;
        }

        RefreshTokenCond cond = new RefreshTokenCond();
        cond.setAppId(appConfig.getAppId());
        cond.setExpireTime(DateUtil.addMinute(new Date(), EXPIRE_TIME));

        List<RefreshTokenDo> tokenDos = refreshTokenRepository.getByCond(cond);

        if (CollectionUtils.isEmpty(tokenDos)) {
            wxClient.refreshAccessToken();
        }
        logger.info("微信access_token定时刷新  end.......");
    }
}
