package cn.edu.ntu.jtxy.dao;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.wxqwl.zj.core.dao.UserInfoDao;
import cn.wxqwl.zj.core.repository.UserInfoRepository;

public class UserInfoTest extends BaseTest {

    @Test
    public void test() {
        UserInfoRepository infoDao = getContext().getBean(UserInfoRepository.class);
        String uid = infoDao.getSeq();
        System.out.println(uid);
    }

    @Test
    public void test1() {
        UserInfoDao infoDao = getContext().getBean(UserInfoDao.class);
        infoDao.getUserByCond("suiyuan121", "web", "E");
    }

}
