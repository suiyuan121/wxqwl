package cn.edu.ntu.jtxy.util;

import javax.ws.rs.core.MediaType;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.edu.ntu.jtxy.web.SystemConstants;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

public class JsonUtilTest {

    private static final Logger logger = LoggerFactory.getLogger(JsonUtilTest.class);

    @Test
    public void test_create_order() {
        String s = "<xml>" + "<appid><![CDATA[wx1b96cf30b46c58e4]]></appid>"
                   + "<body><![CDATA[hh]]></body>" + "<detail><![CDATA[hh]]></detail>"
                   + " <fee_type><![CDATA[CNY]]></fee_type>"
                   + "<limit_pay><![CDATA[no_credit]]></limit_pay>"
                   + "<mch_id><![CDATA[1327838701]]></mch_id>"
                   + " <nonce_str><![CDATA[1111]]></nonce_str>"
                   + "<notify_url><![CDATA[web.witontek.com/ehealth3/wxNotify.do]]></notify_url>"
                   + "<out_trade_no><![CDATA[2016042110054900600]]></out_trade_no>"
                   + "<sign><![CDATA[AC396EB257EFC952070B4000579013B4]]></sign>"
                   + "<spbill_create_ip><![CDATA[127.0.0.1]]></spbill_create_ip>"
                   + " <total_fee><![CDATA[1]]></total_fee>"
                   + " <trade_type><![CDATA[APP]]></trade_type>" + "</xml>";

        logger.info("xxxxxxxs={}", s);
        //请求微信统一下单
        Client newsC = Client.create();
        WebResource newsR = newsC.resource("https://api.mch.weixin.qq.com/pay/unifiedorder");
        String newsMsg = newsR.entity(s, MediaType.APPLICATION_XML)
            .accept(MediaType.APPLICATION_XML).post(String.class);
        logger.info("xxxxxxxxxxxxnewsMsg={}", newsMsg);
    }

    @Test
    public void test_query_() {
        String s = "<xml>" + "<appid>wx1b96cf30b46c58e4</appid>" + "<mch_id>1327838701</mch_id>"
                   + " <nonce_str>C380BEC2BFD727A4B6845133519F3AD6</nonce_str>"
                   + " <transaction_id>2016042110154900640</transaction_id>"
                   + " <sign>695BF1EA09F5C51FE93E8D73A95211A1</sign>" + " </xml>";

        logger.info("xxxxxxxs={}", s);
        //微信订单查看
        Client newsC = Client.create();
        WebResource newsR = newsC.resource("https://api.mch.weixin.qq.com/pay/orderquery");
        String newsMsg = newsR.entity(s, MediaType.APPLICATION_XML)
            .accept(MediaType.APPLICATION_XML).post(String.class);
        logger.info("xxxxxxxxxxxxnewsMsg={}", newsMsg);
    }

    @Test
    public void test_query___() throws Exception {
        String s = "<xml>" + "<appid>wx1b96cf30b46c58e4</appid>" + "<mch_id>1327838701</mch_id>"
                   + " <nonce_str>C380BEC2BFD727A4B6845133519F3AD6</nonce_str>"
                   + " <transaction_id>2016042110154900640</transaction_id>"
                   + " <sign>695BF1EA09F5C51FE93E8D73A95211A1</sign>" + " </xml>";

        logger.info("xxxxxxxs={}", s);
        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/pay/orderquery");
        StringEntity entity = new StringEntity(s);
        entity.setContentType("application/xml");
        httpPost.setEntity(entity);
        HttpClient client = new DefaultHttpClient();
        HttpResponse response = client.execute(httpPost);

        HttpEntity entityRet = response.getEntity();
        String result = EntityUtils.toString(entityRet, SystemConstants.DEFAULT_CHARSET);
        logger.info("用户分组移动请求结果 jsResult={} ", result);
    }
}
