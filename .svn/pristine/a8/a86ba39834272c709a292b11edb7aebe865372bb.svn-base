package cn.edu.ntu.jtxy.core.repository.wx.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;

import cn.edu.ntu.jtxy.core.dao.wx.StudentInfoDao;
import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.cond.StuInfoPageCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WeiXinUserRepositoryImpl.java, v 0.1 2016年3月30日 下午1:42:46 {jin.zhang@witontek.com} Exp $
 */
public class StudentInfoRepositoryImpl implements StudentInfoRepository {

    private static final Logger logger = LoggerFactory.getLogger(StudentInfoRepositoryImpl.class);

    @Autowired
    private StudentInfoDao      studentInfoDao;

    @Override
    public BaseResult add(StudentInfoDo studentInfoDo) {
        logger.info("学生信息新增 studentInfoDo={}", studentInfoDo);
        BaseResult result = new BaseResult();

        if (studentInfoDo == null) {
            result.setSuccess(false);
            return result;
        }
        try {
            studentInfoDao.add(studentInfoDo);
            result.setSuccess(true);
        } catch (DuplicateKeyException e) {
            logger.error(String.format("学生增加主键冲突 studentInfoDo=%s", studentInfoDo), e);
            result.setSuccess(false);
            result.setCode(ResultCodeEnum.DUPLICATEKEY.getCode());
        }
        return result;

    }

    @Override
    public StudentInfoDo getByStuNo(String stuNo) {
        logger.info("学生信息查询 stuNo={}", stuNo);
        return studentInfoDao.getByStuNo(stuNo);
    }

    @Override
    public PageList<StudentInfoDo> pageQuery(StuInfoPageCond cond) {
        logger.info("学生信息分页查询  cond={}", cond);
        if (cond == null) {
            return null;
        }
        return studentInfoDao.pageQuery(cond.getPageSize(), cond.getCurrentPage(), cond.getStuNo(),
            cond.getIdNo(), cond.getStuName(), cond.getPhoneNo());
    }
}
