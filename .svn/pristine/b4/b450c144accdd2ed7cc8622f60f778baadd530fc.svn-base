package cn.edu.ntu.jtxy.web.controller.mng.news;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.PageList;
import cn.edu.ntu.jtxy.core.repository.wx.pagelist.cond.StuInfoPageCond;
import cn.edu.ntu.jtxy.web.controller.mng.form.QueryStuInfoForm;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: NewsInfoController.java, v 0.1 2016年4月29日 下午1:57:42 {jin.zhang@witontek.com} Exp $
 */
@Controller
@RequestMapping(value = "newsInfo.htm")
public class NewsInfoController {
    /**  */
    private static final Logger   logger    = LoggerFactory.getLogger(NewsInfoController.class);

    private static final String   page      = "mng/news/newsInfo";

    private static final int      PAGE_SIZE = 2;

    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(QueryStuInfoForm queryStuInfoForm, ModelMap map) {
        logger.info("新闻信息 doGet  queryStuInfoForm={}");
        doPost(queryStuInfoForm, map);
        return page;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(QueryStuInfoForm queryStuInfoForm, ModelMap map) {
        logger.info("用户信息 doPost queryStuInfoForm={}");

        StuInfoPageCond cond = new StuInfoPageCond();
        cond.setCurrentPage(queryStuInfoForm.getCurrentPage());
        cond.setIdNo(queryStuInfoForm.getIdNo());
        cond.setPageSize(PAGE_SIZE);
        cond.setPhoneNo(queryStuInfoForm.getPhoneNo());
        cond.setStuName(queryStuInfoForm.getStuName());
        cond.setStuNo(queryStuInfoForm.getStuNo());

        PageList<StudentInfoDo> pageList = studentInfoRepository.pageQuery(cond);

        map.addAttribute("queryStuInfoForm", queryStuInfoForm);
        logger.info("用户信息 doPost 结果 pageList={}", pageList);

        map.addAttribute("pageList", pageList);

        return page;
    }

}