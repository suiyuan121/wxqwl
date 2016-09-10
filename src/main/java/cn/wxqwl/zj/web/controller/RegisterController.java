package cn.wxqwl.zj.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import cn.wxqwl.zj.biz.service.ResourceService;
import cn.wxqwl.zj.core.ResultCodeEnum;
import cn.wxqwl.zj.core.component.UserInfoComponent;
import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.UserInfo.UserTypeEnum;
import cn.wxqwl.zj.core.model.UserInfoDo;
import cn.wxqwl.zj.util.DateUtil;
import cn.wxqwl.zj.util.FileUtils;
import cn.wxqwl.zj.web.SystemConstants;
import cn.wxqwl.zj.web.controller.form.RegisterForm;
import cn.wxqwl.zj.web.utils.SessionUtil;

@Controller
@RequestMapping(value = "register.htm")
public class RegisterController implements SystemConstants {
    /**  */

    private static Logger       logger       = LoggerFactory.getLogger(RegisterController.class);

    private static final String registerPage = "register";

    @Autowired
    private ResourceService     resourceService;

    @Autowired
    private UserInfoComponent   userInfoComponent;

    @RequestMapping(method = RequestMethod.GET)
    public String doGet(ModelMap map) {
        logger.info("注册 doGet");
        return registerPage;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doPost(ModelMap modelMap, RegisterForm registerForm, HttpServletRequest request) {
        logger.info(String.format("注册 doPost registerForm=%s", registerForm));

        String sessionVerifyCode = (String) SessionUtil.get(request, VERTFY_CODE);
        logger.info("正确的验证码是    sessionVerifyCode=" + sessionVerifyCode);
        if (!StringUtils.equalsIgnoreCase(registerForm.getVerifyCode(), sessionVerifyCode)) {
            modelMap.addAttribute("errorTips", "验证码错误");
            modelMap.addAttribute("registerForm", registerForm);
            return registerPage;
        }

        String dateOfMonthString = DateUtil.formatMonth(new Date(System.currentTimeMillis()));
        MultipartFile haedImage = registerForm.getFaceimg();
        //文件名
        String fileName = haedImage.getOriginalFilename();
        String fileExtension = fileName.substring(fileName.lastIndexOf(".")); //文件扩展名
        //example: uid_{uuid}.jpg
        String savedFileName = "HeadImage" + "_" + UUID.randomUUID().toString() + fileExtension;
        //文件夹地址
        String fileLocation = "";
        try {
            String imagePath = resourceService.getImagePath().getURL().getPath();
            fileLocation = imagePath + dateOfMonthString;

            // save it
            long fileSize = FileUtils.writeToFile(haedImage.getInputStream(), fileLocation,
                savedFileName, file_size);
            if (fileSize == -1) {
                logger.info("图片新增失败  -超过最大尺寸");
                // delete the file
                new File(fileLocation, savedFileName).delete();
                modelMap.addAttribute("errMsg", "文件尺寸过大");
                return registerPage;
            }
        } catch (IOException e) {
            logger.error(String.format("上传头像失败  ", e.getMessage()), e);
        }

        String imageUrl = fileLocation + File.separatorChar + savedFileName;
        UserInfoDo userInfoDo = new UserInfoDo();
        userInfoDo.setEmail(registerForm.getEmail());
        userInfoDo.setHeadImage(imageUrl);
        userInfoDo.setLogonName(registerForm.getLogonName());
        userInfoDo.setUserType(UserTypeEnum.WEB.getCode());
        userInfoDo.setPwdHash(registerForm.getPassword());
        userInfoDo.setPwdSalt(UUID.randomUUID().toString());

        BaseResult result = userInfoComponent.add(userInfoDo);
        if (!result.isSuccess()) {
            if (StringUtils.equals(result.getCode(), ResultCodeEnum.DUPLICATEKEY.getCode())) {
                modelMap.addAttribute("errMsg", "重复的用户名");
            } else {
                modelMap.addAttribute("errMsg", "系统内部错误");
            }
        }
        return registerPage;
    }
}
