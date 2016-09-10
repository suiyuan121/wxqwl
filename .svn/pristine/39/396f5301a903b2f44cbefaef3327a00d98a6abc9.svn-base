package cn.edu.ntu.jtxy.core.repository.wx;

import java.util.List;

import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.cond.RefreshTokenCond;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月22日 下午1:47:38 {jin.zhang@witontek.com} Exp $
 */
public interface RefreshTokenRepository {

    /**
     * 
     * @return
     */
    public List<RefreshTokenDo> getByCond(RefreshTokenCond cond);

    /**
     * 
     * @param refreshTokenDo
     * @return
     */
    public long add(RefreshTokenDo refreshTokenDo);

    /**
     * 得到最后一次记录
     * @return
     */
    public RefreshTokenDo getLastRecord(String appId);
}
