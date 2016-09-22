package cn.wxqwl.zj.core.repository.cond;

import cn.wxqwl.zj.core.model.BaseModel;
import cn.wxqwl.zj.core.model.dto.UserInfo.UserTypeEnum;
import cn.wxqwl.zj.core.model.enums.StatusEnum;

public class UserInfoCond extends BaseModel {

    /**  */
    private static final long serialVersionUID = -549238061830169493L;

    private String logonName;

    private UserTypeEnum userType;

    private StatusEnum status;

    public String getLogonName() {
        return logonName;
    }

    public void setLogonName(String logonName) {
        this.logonName = logonName;
    }

    public UserTypeEnum getUserType() {
        return userType;
    }

    public void setUserType(UserTypeEnum userType) {
        this.userType = userType;
    }

    public StatusEnum getStatus() {
        return status;
    }

    public void setStatus(StatusEnum status) {
        this.status = status;
    }

}
