package cn.edu.ntu.jtxy.dao;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.dao.wx.StudentInfoDao;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class StuInfoDaoImplTest extends BaseTest {

    @Test
    public void test_page_query_all() {
        StudentInfoDao dao = getContext().getBean(StudentInfoDao.class);

        PageList<StudentInfoDo> ret = dao.pageQuery(10, 1, "121302201", "", "", "");

        logger.info("xxxxxxxxxxret={}", ret);
    }
}
