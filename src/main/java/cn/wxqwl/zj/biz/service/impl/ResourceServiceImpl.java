package cn.wxqwl.zj.biz.service.impl;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.io.Resource;

import cn.wxqwl.zj.biz.service.ResourceService;

/**
 * 
 * @author Administrator
 * @version $Id: ResourceServiceImpl.java, v 0.1 2016年9月1日 下午1:42:56 Administrator Exp $
 */
public class ResourceServiceImpl implements ResourceService, InitializingBean {

    private Resource imagePath;

    public void setImagePath(Resource imagePath) {
        this.imagePath = imagePath;
    }

    @Override
    public Resource getImagePath() {
        return this.imagePath;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
    }
}
