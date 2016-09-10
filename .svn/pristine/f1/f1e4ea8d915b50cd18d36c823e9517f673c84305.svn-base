package cn.edu.ntu.jtxy.core.component.wx.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.core.component.wx.WeiXinUserComponent;
import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WeiXinUserComponentImpl.java, v 0.1 2016年4月25日 下午5:14:08 {jin.zhang@witontek.com} Exp $
 */
public class WeiXinUserComponentImpl implements WeiXinUserComponent {

    private static final Logger  logger = LoggerFactory.getLogger(WeiXinUserComponentImpl.class);

    @Autowired
    private WeiXinUserRepository weiXinUserRepository;

    @Override
    public BaseResult subscribe(String openId) {
        logger.info("用户订阅   openId={}", openId);
        BaseResult result = new BaseResult();

        WeiXinUserDo weiXinUserDo = weiXinUserRepository.getByOpenId(openId);
        logger.info("用户订阅-用户查询   weiXinUserDo={} ", weiXinUserDo);
        if (weiXinUserDo != null) {
            //数据库已经有此人
            if (WeiXinUserDo.SubscribeEnum.getByCode(weiXinUserDo.getSubscribe()) == WeiXinUserDo.SubscribeEnum.N) {
                //如果是未订阅的，更新为subscribe状态
                weiXinUserDo.setSubscribe(WeiXinUserDo.SubscribeEnum.Y.getCode());
                boolean r = weiXinUserRepository.updateSubscribeByOpenId(weiXinUserDo);
                if (!r) {
                    result.setSuccess(false);
                    result.setCode(ResultCodeEnum.系统错误.getCode());
                    return result;
                }
            }
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public BaseResult unsubscribe(String openId) {
        logger.info("用户订阅   openId={}", openId);
        BaseResult result = new BaseResult();

        WeiXinUserDo weiXinUserDo = weiXinUserRepository.getByOpenId(openId);
        logger.info("用户订阅-用户查询   weiXinUserDo={} ", weiXinUserDo);
        if (weiXinUserDo != null) {
            //数据库已经有此人
            if (WeiXinUserDo.SubscribeEnum.getByCode(weiXinUserDo.getSubscribe()) == WeiXinUserDo.SubscribeEnum.Y) {
                //如果是订阅的，更新为subscribe状态
                weiXinUserDo.setSubscribe(WeiXinUserDo.SubscribeEnum.Y.getCode());
                boolean r = weiXinUserRepository.updateSubscribeByOpenId(weiXinUserDo);
                if (!r) {
                    result.setSuccess(false);
                    result.setCode(ResultCodeEnum.系统错误.getCode());
                    return result;
                }
            }
        }
        result.setSuccess(true);
        return result;
    }
}
