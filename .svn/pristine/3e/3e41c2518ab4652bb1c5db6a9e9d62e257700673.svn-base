package cn.edu.ntu.jtxy.resp;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class WeiXinUserRepositoryTest extends BaseTest {

    @Test
    public void test_add() {
        WeiXinUserRepository resp = getContext().getBean(WeiXinUserRepository.class);

        WeiXinUserDo weiXinUserDo = new WeiXinUserDo();
        weiXinUserDo.setAppId("123");
        weiXinUserDo.setOpenId("openId");
        weiXinUserDo.setProps("pros");
        weiXinUserDo.setUnionId("unionId");
        weiXinUserDo.setHeadImageUrl("image");
        long ret = resp.add(weiXinUserDo);
        logger.info("xxxxxxlist={}", ret);
    }

    @Test
    public void test_getByOpenId() {
        WeiXinUserRepository resp = getContext().getBean(WeiXinUserRepository.class);
        WeiXinUserDo weiXinUserDo = resp.getByOpenId("opZvNw1kJ_msgbk55RfUH7IymNzs");

        logger.info("xxxxxxweiXinUserDo={}", weiXinUserDo);
    }
}
