package cn.edu.ntu.jtxy.resp;

import java.util.Date;
import java.util.List;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.RefreshTokenCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class RefreshTokenRepositoryTest extends BaseTest {

    @Test
    public void test_cond() {
        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);

        RefreshTokenCond cond = new RefreshTokenCond();
        cond.setAppId("wx04b966b24ea86726");
        cond.setExpireTime(new Date());
        List<RefreshTokenDo> s = resp.getByCond(cond);
        logger.info("xxxxxxlist={}", s);
    }

    @Test
    public void test_add() {
        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);

        RefreshTokenDo refreshTokenDo = new RefreshTokenDo();
        refreshTokenDo.setAppId("appId");
        refreshTokenDo.setAccessToken("accessYoekn");
        refreshTokenDo.setEffectTime(new Date());
        refreshTokenDo.setExpireTime(new Date());
        long ret = resp.add(refreshTokenDo);
        logger.info("xxxxxxlist={}", ret);
    }
}
