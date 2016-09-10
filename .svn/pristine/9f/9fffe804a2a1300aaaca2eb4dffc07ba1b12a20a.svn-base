package cn.edu.ntu.jtxy.client;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.model.wx.RefreshTokenDo;
import cn.edu.ntu.jtxy.core.repository.wx.RefreshTokenRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WxAppConfigRepository;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: WxClientTest.java, v 0.1 2016年4月14日 下午3:32:02 {jin.zhang@witontek.com} Exp $
 */
public class WxClientTest extends BaseTest {

    public String create_group_url = "https://api.weixin.qq.com/cgi-bin/groups/create?access_token=%s";

    public String query_group_url  = "https://api.weixin.qq.com/cgi-bin/groups/get?access_token=%s";

    @Test
    public void test_refresh() {

        WxClient wxClient = getContext().getBean(WxClient.class);
        wxClient.refreshAccessToken();
    }

    /**
     * 创建微信分组
     * @throws JSONException 
     * @throws IOException 
     * @throws ClientProtocolException 
     */
    @Test
    public void test_group_create() throws JSONException, ClientProtocolException, IOException {

        WxAppConfigRepository wxesp = getContext().getBean(WxAppConfigRepository.class);

        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);
        RefreshTokenDo refreshTokenDo = resp.getLastRecord(wxesp.getDefault().getAppId());

        JSONObject jsonObj1_1 = new JSONObject();
        jsonObj1_1.put("name", "s");

        JSONObject jsonObj1 = new JSONObject();
        jsonObj1.put("group", jsonObj1_1);
        HttpPost httpPost = new HttpPost(String.format(create_group_url,
            refreshTokenDo.getAccessToken()));

        StringEntity entity = new StringEntity(jsonObj1.toString());
        entity.setContentType("application/json");
        httpPost.setEntity(entity);
        HttpClient client = new DefaultHttpClient();
        HttpResponse response = client.execute(httpPost);

        HttpEntity entityRet = response.getEntity();
        @SuppressWarnings("deprecation")
        String jsResult = EntityUtils.toString(entityRet, HTTP.UTF_8);

        logger.info("微信客户端刷新结果  jsResult={} ", jsResult);
    }

    /**
     * 查询分组
     * @throws JSONException
     * @throws ClientProtocolException
     * @throws IOException
     */
    @Test
    public void test_group_query() throws JSONException, ClientProtocolException, IOException {

        WxAppConfigRepository wxesp = getContext().getBean(WxAppConfigRepository.class);

        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);
        RefreshTokenDo refreshTokenDo = resp.getLastRecord(wxesp.getDefault().getAppId());

        Client c = Client.create();
        WebResource r = c.resource(String.format(query_group_url, refreshTokenDo.getAccessToken()));
        String jsResult = r.get(String.class);

        logger.info("微信客户端刷新结果  jsResult={} ", jsResult);
    }

    @Test
    public void test_group_move() throws JSONException, ClientProtocolException, IOException {

        WxAppConfigRepository wxesp = getContext().getBean(WxAppConfigRepository.class);

        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);
        RefreshTokenDo refreshTokenDo = resp.getLastRecord(wxesp.getDefault().getAppId());

        Client c = Client.create();
        WebResource r = c.resource(String.format(query_group_url, refreshTokenDo.getAccessToken()));
        String jsResult = r.get(String.class);

        logger.info("微信客户端刷新结果  jsResult={} ", jsResult);
    }

    @Test
    public void test_get_all_sucai() throws JSONException, ClientProtocolException, IOException {

        String get_all_sucai_url = "https://api.weixin.qq.com/cgi-bin/material/get_materialcount?access_token=%s";
        WxAppConfigRepository wxesp = getContext().getBean(WxAppConfigRepository.class);

        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);
        RefreshTokenDo refreshTokenDo = resp.getLastRecord(wxesp.getDefault().getAppId());

        Client c = Client.create();
        WebResource r = c
            .resource(String.format(get_all_sucai_url, refreshTokenDo.getAccessToken()));
        String jsResult = r.get(String.class);

        logger.info("微信客户端刷新结果  jsResult={} ", jsResult);
    }

    @Test
    public void test_get_picNews() throws JSONException, ClientProtocolException, IOException {

        String get_pic_news = "https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token=%s";
        WxAppConfigRepository wxesp = getContext().getBean(WxAppConfigRepository.class);

        RefreshTokenRepository resp = getContext().getBean(RefreshTokenRepository.class);
        RefreshTokenDo refreshTokenDo = resp.getLastRecord(wxesp.getDefault().getAppId());

        JSONObject jsonObj1 = new JSONObject();
        jsonObj1.put("type", "news");
        jsonObj1.put("offset", "0");
        jsonObj1.put("count", "3");

        HttpPost httpPost = new HttpPost(String.format(get_pic_news,
            refreshTokenDo.getAccessToken()));

        StringEntity entity = new StringEntity(jsonObj1.toString());
        entity.setContentType("application/json");
        httpPost.setEntity(entity);
        HttpClient client = new DefaultHttpClient();
        HttpResponse response = client.execute(httpPost);

        HttpEntity entityRet = response.getEntity();
        @SuppressWarnings("deprecation")
        String jsResult = EntityUtils.toString(entityRet, HTTP.UTF_8);

        JSONObject j = new JSONObject(jsResult);
        logger.info("获取微信图文结果  jsResult={} ", j.get("item"));
    }

}
