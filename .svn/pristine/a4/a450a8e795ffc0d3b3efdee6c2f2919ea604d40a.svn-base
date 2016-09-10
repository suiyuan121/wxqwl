package cn.edu.ntu.jtxy.core.dao.wx.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.core.dao.wx.StudentInfoDao;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: StudentInfoDaoImpl.java, v 0.1 2016年4月13日 下午3:52:29 {jin.zhang@witontek.com} Exp $
 */
public class StudentInfoDaoImpl extends SqlSessionDaoSupport implements StudentInfoDao {

    private static final Logger logger    = LoggerFactory.getLogger(StudentInfoDaoImpl.class);

    private static final String NAMESPACE = StudentInfoDao.class.getName();

    @Override
    public StudentInfoDo getByStuNo(String stuNo) {
        logger.info("查询学生信息   stuNo={}", stuNo);
        return getSqlSession().selectOne(NAMESPACE + ".getByStuNo", stuNo);
    }

    @Override
    public long add(StudentInfoDo studentInfoDo) {
        logger.info("新增学生信息   studentInfoDo={}", studentInfoDo);
        getSqlSession().insert(NAMESPACE + ".add", studentInfoDo);
        return studentInfoDo.getId();
    }

    @Override
    public PageList<StudentInfoDo> pageQuery(int pageSize, int currentPage, String stuNo,
                                             String idNo, String stuName, String phone) {
        logger.info("分页查询全部学生  pageSize={},pageCurrent={},stuNo={},idNo={},stuName={},phone={}",
            pageSize, currentPage, stuNo, idNo, stuName, phone);
        Map<String, String> map = new HashMap<String, String>();
        map.put("stuNo", stuNo);
        map.put("idNo", idNo);
        map.put("stuName", stuName);
        map.put("phone", phone);

        int totalCount = getSqlSession().selectOne(NAMESPACE + ".pageQueryCount", map);

        int pageNum = totalCount % pageSize > 0 ? (totalCount / pageSize) + 1
            : (totalCount / pageSize);

        if (currentPage > pageNum) {
            //当前页大于总页数，重置到首页
            currentPage = 1;
        }
        map.put("pageSize", String.valueOf(pageSize));
        map.put("offset", String.valueOf((currentPage - 1) * pageSize));

        List<StudentInfoDo> list = getSqlSession().selectList(NAMESPACE + ".pageQuery", map);
        PageList<StudentInfoDo> pageList = new PageList<StudentInfoDo>();
        pageList.setResultList(list);
        pageList.setCurrentPage(currentPage);
        pageList.setPageNum(pageNum);
        pageList.setPageSize(pageSize);
        pageList.setTotalCount(totalCount);

        return pageList;
    }
}
