package cn.edu.ntu.jtxy.biz.service.client.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.biz.service.client.model.wx.NewsInfo;
import cn.edu.ntu.jtxy.biz.service.client.model.wx.WxUserInfo;
import cn.edu.ntu.jtxy.biz.service.client.result.QueryNewsResult;
import cn.edu.ntu.jtxy.core.model.wx.AppConfig;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;
import cn.edu.ntu.jtxy.util.DateUtil;
import cn.edu.ntu.jtxy.web.SystemConstants;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxClientImpl.java, v 0.1 2016年3月17日 下午2:07:39 {jin.zhang@witontek.com} Exp $
 */
public class WxClientImpl implements WxClient {

    private static final Logger    logger                   = LoggerFactory
                                                                .getLogger(WxClientImpl.class);

    /** 刷新token*/
    public static String           REFRESH_ACCESS_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&"
                                                              + "appid=%s" + "&" + "secret=%s";
    /** 拉取用户信息 */
    public static String           GET_MORE_USER_INFO       = "https://api.weixin.qq.com/sns/userinfo?"
                                                              + "access_token=%s&"
                                                              + "openid=%s&lang=zh_CN";

    /**移动用户分组url  */
    public static String           MOVE_GROUP_URL           = "https://api.weixin.qq.com/cgi-bin/groups/members/update?access_token=%s";

    /** 获取微信图文消息 */
    private static String          GET_LATEST_NEWS_URL      = "https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token=%s";

    /** 延长2个小时 */
    public static int              EXPIRES_IN               = 2;

    public static String           SUCCESS_CODE             = "0";

    /**  */
    public static String           TYPE                     = "news";

    @Autowired
    private RefreshTokenRepository refreshTokenRepository;

    @Autowired
    private WxAppConfigRepository  wxAppConfigRepository;

    @Override
    public void refreshAccessToken() {
        logger.info("微信客户端刷新access_token ");

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("微信查询配置信息失败 ");
            return;
        }

        String appId = appConfig.getAppId();
        String appSecret = appConfig.getAppSecret();

        String url = String.format(REFRESH_ACCESS_TOKEN_URL, appId, appSecret);
        Client c = Client.create();
        WebResource r = c.resource(url);
        String jsResult = r.get(String.class);
        logger.info("微信客户端刷新结果  jsResult={} ", jsResult);

        try {
            JSONObject json = new JSONObject(jsResult);
            String access_token = json.optString("access_token");
            String expires_in = json.optString("expires_in");
            logger.info("微信客户端刷新token  access_token={}，expires_in={} ", access_token, expires_in);

            if (StringUtils.isBlank(access_token)) {
                String errCode = json.optString("errcode");
                String errMsg = json.optString("errmsg");
                //刷新失败
                logger.warn("微信token 刷新失败 errCode={},errMsg={}", errCode, errMsg);
                return;
            }

            RefreshTokenDo refreshTokenDo = new RefreshTokenDo();
            refreshTokenDo.setAccessToken(access_token);
            refreshTokenDo.setAppId(appId);
            refreshTokenDo.setEffectTime(new Date());
            refreshTokenDo.setExpireTime(DateUtil.addHours(new Date(), EXPIRES_IN));
            long ret = refreshTokenRepository.add(refreshTokenDo);

            logger.info("微信刷新token 新增结果 id={}", ret);
        } catch (JSONException e) {
            logger.error("微信刷新token json格式转换错误 jsResult={}", jsResult);
        }
    }

    @Override
    public void queryWxUserInfo(WxUserInfo wxUserInfo) {
        logger.info("获取用户基本信息  wxUserInfo={} ", wxUserInfo);

        if (wxUserInfo == null || StringUtils.isEmpty(wxUserInfo.getOpenId())
            || StringUtils.isEmpty(wxUserInfo.getAccess_token())) {

        }
        String url = String.format(GET_MORE_USER_INFO, wxUserInfo.getAccess_token(),
            wxUserInfo.getOpenId());

        Client c = Client.create();
        WebResource r = c.resource(url);
        String jsResult = r.get(String.class);
        logger.info("微信获取用户信息结果  jsResult={} ", jsResult);

        try {
            JSONObject json = new JSONObject(jsResult);
            String code = json.optString("errcode");
            String errmsg = json.optString("errmsg");
            if (StringUtils.isEmpty(code)) {
                //获取信息成功
                String nickName = json.getString("nickname");
                String headImageUrl = json.getString("headimgurl");
                String unionid = json.optString("unionid");

                wxUserInfo.setNickName(nickName);
                wxUserInfo.setHeadImageUrl(headImageUrl);
                wxUserInfo.setUnionid(unionid);
                wxUserInfo.setProps(jsResult);
                wxUserInfo.setSuccess(true);
            } else {
                wxUserInfo.setSuccess(false);
                wxUserInfo.setCode(code);
                wxUserInfo.setErrMsg(errmsg);
            }
        } catch (JSONException e) {
            logger.error("微信刷新获取用户信息 json格式转换错误 jsResult={},e={}", jsResult, e);
        }

    }

    @Override
    public boolean moveGroup(String openId, String to_groupid) {
        logger.info("用户分组移动  openId={}，to_groupid={} ", openId, to_groupid);
        if (StringUtils.isEmpty(openId) || StringUtils.isEmpty(to_groupid)) {
            logger.warn("用户移动分组失败 openId={} ,to_groupid={}", openId, to_groupid);
            return false;
        }
        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("获取app配置失败");
            return false;
        }
        RefreshTokenDo refreshTokenDo = refreshTokenRepository.getLastRecord(appConfig.getAppId());
        if (refreshTokenDo == null) {
            logger.warn("获取本地access_token 失败 refreshTokenDo={}", appConfig.getAppId());
            return false;
        }

        JSONObject jsonObj = new JSONObject();
        String jsResult = null;
        try {
            jsonObj.put("openid", openId);
            jsonObj.put("to_groupid", to_groupid);
            HttpPost httpPost = new HttpPost(String.format(MOVE_GROUP_URL,
                refreshTokenDo.getAccessToken()));
            StringEntity entity = new StringEntity(jsonObj.toString());
            entity.setContentType("application/json");
            httpPost.setEntity(entity);
            HttpClient client = new DefaultHttpClient();
            HttpResponse response = client.execute(httpPost);

            HttpEntity entityRet = response.getEntity();
            jsResult = EntityUtils.toString(entityRet, SystemConstants.DEFAULT_CHARSET);
            logger.info("用户分组移动请求结果 jsResult={} ", jsResult);

            JSONObject jsonRet = new JSONObject(jsResult);

            String errcode = jsonRet.getString("errcode");
            if (StringUtils.equals(errcode, SUCCESS_CODE)) {
                return true;
            }
        } catch (Exception e) {
            logger.error(String.format("微信用户移动分组失败 openId=%s,to_groupid=%s ,jsResult={}", openId,
                to_groupid, jsResult), e);
        }
        return false;
    }

    @Override
    public QueryNewsResult getLatestNews(int offset, int count) {
        logger.info("获取最新news offset={},count={] ", offset, count);

        QueryNewsResult result = new QueryNewsResult();
        List<NewsInfo> list = new ArrayList<NewsInfo>();

        AppConfig appConfig = wxAppConfigRepository.getDefault();
        if (appConfig == null) {
            logger.warn("获取app配置失败");
            result.setSuccess(false);
            result.setErrMsg("获取app配置失败");
            return result;
        }
        RefreshTokenDo refreshTokenDo = refreshTokenRepository.getLastRecord(appConfig.getAppId());
        if (refreshTokenDo == null) {
            logger.warn("获取本地access_token 失败 refreshTokenDo={}", appConfig.getAppId());
            result.setSuccess(false);
            result.setErrMsg("获取token失败");
            return result;
        }

        try {
            JSONObject jsonObj = new JSONObject();
            jsonObj.put("type", TYPE);
            jsonObj.put("offset", offset);
            jsonObj.put("count", count);

            HttpPost httpPost = new HttpPost(String.format(GET_LATEST_NEWS_URL,
                refreshTokenDo.getAccessToken()));

            StringEntity entity = new StringEntity(jsonObj.toString());
            entity.setContentType("application/json");
            httpPost.setEntity(entity);
            HttpClient client = new DefaultHttpClient();
            HttpResponse response = client.execute(httpPost);

            HttpEntity entityRet = response.getEntity();
            @SuppressWarnings("deprecation")
            String jsResult = EntityUtils.toString(entityRet, HTTP.UTF_8);
            logger.info("获取微信图文结果  jsResult={} ", jsResult);

            JSONObject json = new JSONObject(jsResult);

            String errcode = json.optString("errcode");
            String errmsg = json.optString("errmsg");
            if (StringUtils.isBlank(errcode)) {
                logger.info("获取微信图文结果失败  errcode={}，errmsg={} ", errcode, errmsg);
                result.setSuccess(false);
                result.setCode(errcode);
                result.setErrMsg(errmsg);
                return result;
            }
            //获取成功
            JSONArray itemArray = json.getJSONArray("item");
            for (int i = 0; i < itemArray.length(); i++) {

                JSONObject itemJson = itemArray.getJSONObject(i);
                String media_id = itemJson.optString("media_id");
                String content = itemJson.optString("content");

                JSONObject contentJson = new JSONObject(content);
                JSONArray news_item_array = contentJson.getJSONArray("news_item");

                for (int j = 0; j < news_item_array.length(); j++) {
                    JSONObject temp = news_item_array.getJSONObject(i);
                    String title = temp.optString("title");
                    String author = temp.optString("author");
                    String digest = temp.optString("digest");
                    String url = temp.optString("url");

                    NewsInfo newsInfo = new NewsInfo();
                    newsInfo.setAuthor(author);
                    newsInfo.setDigest(digest);
                    newsInfo.setTitle(title);
                    newsInfo.setUrl(url);
                    list.add(newsInfo);
                }
            }
            result.setNews(list);
            result.setSuccess(true);
            return result;
        } catch (Exception e) {
            logger.error(String.format("获取微信图文失败   offset=%s,count=%s", offset, count), e);
            result.setSuccess(false);
            return result;
        }
    }
}
