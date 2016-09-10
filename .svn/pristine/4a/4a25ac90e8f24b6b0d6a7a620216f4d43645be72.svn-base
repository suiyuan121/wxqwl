package cn.edu.ntu.jtxy.core.dao.wx;

import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: StudentInfoDao.java, v 0.1 2016年4月27日 下午8:59:37 {jin.zhang@witontek.com} Exp $
 */
public interface StudentInfoDao {

    /**
     * 
     * @param studentInfoDo
     * @return
     */
    public long add(StudentInfoDo studentInfoDo);

    /**
     * 
     * @param stuNo
     * @return
     */
    public StudentInfoDo getByStuNo(String stuNo);

    /**
     * 
     * @param pageSize
     * @param pageNum
     * @param stuNo
     * @param idNo
     * @param stuName
     * @param phone
     * @return
     */
    public PageList<StudentInfoDo> pageQuery(int pageSize, int pageNum, String stuNo, String idNo,
                                             String stuName, String phone);
}
