package cn.edu.ntu.jtxy.biz.service.client;

import cn.edu.ntu.jtxy.biz.service.client.model.wx.WxUserInfo;
import cn.edu.ntu.jtxy.biz.service.client.result.QueryNewsResult;

/**
 * 调用微信接口
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxClient.java, v 0.1 2016年3月17日 下午2:06:37 {jin.zhang@witontek.com} Exp $
 */
public interface WxClient {

    /**
     * 刷新token
     */
    public void refreshAccessToken();

    /**
     * 
     * @param wxUserInfo
     * @return
     */
    public void queryWxUserInfo(WxUserInfo wxUserInfo);

    /**
     * 
     * @param openId
     * @param to_groupid
     * @return
     */
    public boolean moveGroup(String openId, String to_groupid);

    /**
     * 
     * @param accessToken
     * @return
     */
    public QueryNewsResult getLatestNews(int offset, int count);

}
