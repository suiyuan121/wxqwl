package cn.edu.ntu.jtxy.core.repository.wx;

import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.cond.StuInfoPageCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: StudentInfoRepository.java, v 0.1 2016年4月27日 下午3:22:17 {jin.zhang@witontek.com} Exp $
 */
public interface StudentInfoRepository {

    /**
     * 
     * @param studentInfoDo
     * @return
     */
    public BaseResult add(StudentInfoDo studentInfoDo);

    /**
     * 
     * @param stuNo
     * @return
     */
    public StudentInfoDo getByStuNo(String stuNo);

    /**
     * 
     * @param stuNo
     * @return
     */
    public PageList<StudentInfoDo> pageQuery(StuInfoPageCond cond);

}
