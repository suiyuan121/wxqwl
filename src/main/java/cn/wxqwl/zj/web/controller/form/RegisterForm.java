package cn.wxqwl.zj.web.controller.form;

import org.springframework.web.multipart.MultipartFile;

import cn.wxqwl.zj.core.model.BaseModel;

public class RegisterForm extends BaseModel {

    /**  */
    private static final long serialVersionUID = -719105440452485295L;

    private String            logonName;

    private String            email;

    private String            password;

    private String            password2;

    private String            verifyCode;

    private MultipartFile     faceimg;

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getLogonName() {
        return logonName;
    }

    public void setLogonName(String logonName) {
        this.logonName = logonName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public MultipartFile getFaceimg() {
        return faceimg;
    }

    public void setFaceimg(MultipartFile faceimg) {
        this.faceimg = faceimg;
    }

}
