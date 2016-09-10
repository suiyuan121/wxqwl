package cn.edu.ntu.jtxy.web.controller.mng.student;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.web.controller.mng.form.AddStuForm;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: StuImportBatchController.java, v 0.1 2016年4月28日 上午11:59:13 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "stuImportBatch.htm")
public class StuImportBatchController {
    /**  */
    private static final Logger   logger = LoggerFactory.getLogger(StuImportBatchController.class);

    private static final String   page   = "mng/student/stuImportBatch";

    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet() {
        logger.info("学生批量导入新增 doGet ");
        return page;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(AddStuForm addStuForm, ModelMap modelMap) {
        logger.info("学生批量导入新增  doPost addStuForm={}", addStuForm);
        modelMap.addAttribute("addStuFrom", addStuForm);

        return page;
    }

}
