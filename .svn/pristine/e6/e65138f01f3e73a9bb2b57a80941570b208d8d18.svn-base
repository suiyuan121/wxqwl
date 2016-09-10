package cn.edu.ntu.jtxy.core.repository.wx;

import java.util.List;

import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoRepository.java, v 0.1 2016年3月30日 上午10:29:15 {jin.zhang@witontek.com} Exp $
 */
public interface UserInfoRepository {

    /**
     * 
     * @param userInfoCond
     * @return
     */
    List<UserInfoDo> getByCond(UserInfoCond userInfoCond);

    /**
     * 
     * @param UserInfoDo
     * @return
     */
    public BaseResult add(UserInfoDo UserInfoDo);

    /**
     * 
     * @return
     */
    public String getSeq();

    /**
     * 
     * @param openId
     * @return
     */
    public boolean unBindOpenId(String openId);

    /**
     * 
     * @return
     */
    public boolean updateOpenId(UserInfoDo userInfoDo);

}
