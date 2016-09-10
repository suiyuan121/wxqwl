package cn.edu.ntu.jtxy.core.dao.wx;

import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoDao.java, v 0.1 2016年3月28日 下午3:56:15 {jin.zhang@witontek.com} Exp $
 */
public interface WeiXinUserDao {

    /**
     * 
     * @param weiXinUserDo
     * @return
     */
    public long add(WeiXinUserDo weiXinUserDo);

    /**
     * 
     * @param openId
     * @return
     */
    public WeiXinUserDo getByOpenId(String openId);

    /**
     * 
     * @param subscribe
     * @return
     */
    public boolean updateSubscribeByOpenId(String subscribe, String openId);
}
