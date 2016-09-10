package cn.wxqwl.zj.core.repository;

import java.util.List;

import cn.wxqwl.zj.core.model.UserInfoDo;
import cn.wxqwl.zj.core.repository.cond.UserInfoCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoRepository.java, v 0.1 2016年3月30日 上午10:29:15 {jin.zhang@witontek.com} Exp $
 */
public interface UserInfoRepository {

    /**
     * 
     * @param UserInfoDo
     * @return
     */
    public String add(UserInfoDo UserInfoDo);

    /**
     * 
     * @return
     */
    public String getSeq();

    /**
     * 
     * @param userInfoCond
     * @return
     */
    public List<UserInfoDo> getByCond(UserInfoCond userInfoCond);

}
