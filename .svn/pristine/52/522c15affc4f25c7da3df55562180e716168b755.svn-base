package cn.edu.ntu.jtxy.web.controller.mng.student;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.web.controller.mng.form.AddStuForm;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: StuAddController.java, v 0.1 2016年4月26日 上午9:36:16 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "stuAdd.htm")
public class StuAddController {
    /**  */
    private static final Logger   logger = LoggerFactory.getLogger(StuAddController.class);

    private static final String   page   = "mng/student/stuAdd";

    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("学生新增 doGet");
        return page;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(AddStuForm addStuForm, ModelMap modelMap) {
        logger.info("学生新增 doPost addStuForm={}", addStuForm);
        modelMap.addAttribute("addStuFrom", addStuForm);

        StudentInfoDo studentInfoDo = getStudentInfo(addStuForm);

        BaseResult ret = studentInfoRepository.add(studentInfoDo);
        if (!ret.isSuccess()) {
            if (StringUtils.equals(ret.getCode(), ResultCodeEnum.DUPLICATEKEY.getCode())) {
                modelMap.addAttribute("msg", "学号或身份证已存在");
            } else {
                modelMap.addAttribute("msg", "增加失败,请重试");
            }
            return page;
        }

        modelMap.addAttribute("msg", "success");
        return page;
    }

    private StudentInfoDo getStudentInfo(AddStuForm addStuForm) {
        StudentInfoDo studentInfoDo = new StudentInfoDo();
        studentInfoDo.setAddress(addStuForm.getHomeAddress());
        studentInfoDo.setSchool("");
        studentInfoDo.setDepartment("");
        studentInfoDo.setGrade("");
        studentInfoDo.setClassNo("");
        studentInfoDo.setIdNo(addStuForm.getIdNo());
        studentInfoDo.setPhone(addStuForm.getPhoneNum());
        studentInfoDo.setRealName(addStuForm.getStuName());
        studentInfoDo.setSex(addStuForm.getGender());
        studentInfoDo.setStuNo(addStuForm.getStuNo());
        return studentInfoDo;
    }
}
