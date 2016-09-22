package cn.wxqwl.zj.core.component;

import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.dos.UserInfoDo;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: UserInfoComponent.java, v 0.1 2016年9月1日 下午2:09:54 Administrator Exp $
 */
public interface UserInfoComponent {

    /**
     * 
     * @param userInfoDto
     * @return
     */
    BaseResult add(UserInfoDo userInfoDo);
}
