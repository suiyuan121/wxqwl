package cn.edu.ntu.jtxy.dao;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.dao.wx.UserInfoDao;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class UserInfoDaoImplTest extends BaseTest {

    @Test
    public void test_add() {
        UserInfoDao dao = getContext().getBean(UserInfoDao.class);

        UserInfoDo userInfoDo = new UserInfoDo();
        userInfoDo.setOpenId("openid1");
        userInfoDo.setUid("uid1");
        userInfoDo.setStuNo("stu_no1");
        userInfoDo.setIdNo("idNo");
        userInfoDo.setUserType("usrType");
        userInfoDo.setPwdSalt("salt");
        userInfoDo.setPwdHash("hash");
        userInfoDo.setSex("nan");
        userInfoDo.setStatus("status");
        long ret = dao.add(userInfoDo);

        logger.info("xxxxxxxxxxret={}", ret);
    }

    @Test
    public void test_get_seq() {
        UserInfoDao dao = getContext().getBean(UserInfoDao.class);
        long ret = dao.getSeq();

        logger.info("xxxxxxxxxxret={}", ret);
    }
}
