package cn.edu.ntu.jtxy.util;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.springframework.util.CollectionUtils;

import cn.edu.ntu.jtxy.web.SystemConstants;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: URLUtils.java, v 0.1 2016年3月15日 上午11:18:33 {jin.zhang@witontek.com} Exp $
 */
public class URLUtils {

    /**
     * 
     * @param paramString
     * @return
     */
    public static Map<String, String> getParamMap(String paramString) {

        Map<String, String> map = new HashMap<String, String>();
        if (StringUtils.isBlank(paramString)) {
            return map;
        }
        List<NameValuePair> paris = URLEncodedUtils.parse(paramString,
            Charset.forName(SystemConstants.DEFAULT_CHARSET));
        if (!CollectionUtils.isEmpty(paris)) {
            for (NameValuePair item : paris) {
                map.put(item.getName(), item.getValue());
            }
        }
        return map;
    }
}
