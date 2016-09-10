package cn.edu.ntu.jtxy.resp;

import java.util.List;
import java.util.UUID;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;
import cn.edu.ntu.jtxy.util.PwdUtils;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class UserInfoRepositoryTest extends BaseTest {

    @Test
    public void test_add() {
        UserInfoRepository resp = getContext().getBean(UserInfoRepository.class);

        UserInfoDo userInfoDo = new UserInfoDo();
        userInfoDo.setIdNo("321322199102284616");
        userInfoDo.setLoc("江苏省南通市崇川区南通大学主校区");
        userInfoDo.setMemo("add");
        userInfoDo.setNickName("suiyuan");
        userInfoDo.setOpenId("----");
        userInfoDo.setPhone("18362156503");
        userInfoDo.setPwdSalt(UUID.randomUUID().toString());
        userInfoDo.setPwdHash(PwdUtils.hashPassword("123456", userInfoDo.getPwdSalt()));
        userInfoDo.setRealName("张进");
        userInfoDo.setSex("男");
        userInfoDo.setStatus(UserInfoDo.StatusEnum.ENABLE.getCode());
        userInfoDo.setStuNo("admin");
        userInfoDo.setUserType(UserInfoDo.UserTypeEnum.ADMIN.getCode());
        BaseResult addRet = resp.add(userInfoDo);
        logger.info("xxxxxxlist={}", addRet);
    }

    @Test
    public void test_getByCond() {
        UserInfoRepository resp = getContext().getBean(UserInfoRepository.class);

        UserInfoCond userInfoCond = new UserInfoCond();
        userInfoCond.setStuNo("admin");
        List<UserInfoDo> userInfoDo = resp.getByCond(userInfoCond);
        logger.info("xxxxxxlist={}", userInfoDo);
    }

    @Test
    public void test() {
        String pwdHashTemp = PwdUtils.hashPassword("123456",
            "1d3245610bdbbe6db0a782a60c5ac1645ca65061b1b11997edf9024c212ba447");
        logger.info("xxxx{}", pwdHashTemp);

    }

    @Test
    public void test_unbind() {
        UserInfoRepository resp = getContext().getBean(UserInfoRepository.class);

        boolean ret = resp.unBindOpenId("2016-04-20 16:55:59.577--unBind");
        logger.info("xxxxxxlist={}", ret);

    }

    @Test
    public void test_update() {
        UserInfoRepository resp = getContext().getBean(UserInfoRepository.class);

        UserInfoDo userInfoDo = new UserInfoDo();
        userInfoDo.setUid("103040000000011");
        userInfoDo.setOpenId("2016-04-20 16:55:59.577--unBind");
        boolean ret = resp.updateOpenId(userInfoDo);
        logger.info("xxxxxxlist={}", ret);

    }
}
