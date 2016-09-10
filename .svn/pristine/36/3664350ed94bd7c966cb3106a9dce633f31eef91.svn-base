package cn.edu.ntu.jtxy.core.dao.wx;

import java.util.Date;
import java.util.List;

import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenDao.java, v 0.1 2016年3月22日 下午1:56:32 {jin.zhang@witontek.com} Exp $
 */
public interface RefreshTokenDao {

    /**
     * 
     * @return
     */
    public List<RefreshTokenDo> getByCond(String appId, Date gmtExpire);

    /**
     * 
     * @param refreshTokenDo
     * @return
     */
    public long add(RefreshTokenDo refreshTokenDo);

    /**
     * 
     * @param appId
     * @return
     */
    public RefreshTokenDo getLastRecord(String appId);
}
