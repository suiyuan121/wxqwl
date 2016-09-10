package cn.wxqwl.zj.core.component.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.util.StringUtils;

import cn.wxqwl.zj.core.ResultCodeEnum;
import cn.wxqwl.zj.core.component.UserInfoComponent;
import cn.wxqwl.zj.core.model.BaseResult;
import cn.wxqwl.zj.core.model.ImageInfoDo;
import cn.wxqwl.zj.core.model.UserInfoDo;
import cn.wxqwl.zj.core.model.enums.ImageTypeEnum;
import cn.wxqwl.zj.core.model.enums.StatusEnum;
import cn.wxqwl.zj.core.repository.ImageInfoRepository;
import cn.wxqwl.zj.core.repository.UserInfoRepository;
import cn.wxqwl.zj.util.PwdUtils;

/**
 * 
 * @author 1581128024@qq.com
 * @version $Id: UserComponentImpl.java, v 0.1 2016年9月1日 下午2:13:06 Administrator Exp $
 */
public class UserComponentImpl implements UserInfoComponent {

    private static final Logger logger = LoggerFactory.getLogger(UserComponentImpl.class);

    @Autowired
    private UserInfoRepository  userInfoRepository;

    @Autowired
    private TransactionTemplate transactionTemplate;

    @Autowired
    private ImageInfoRepository imageInfoRepository;

    /** 
     * @see cn.wxqwl.zj.core.component.UserInfoComponent#add(cn.wxqwl.zj.core.dto.UserInfoDto)
     */
    @Override
    public BaseResult add(final UserInfoDo userInfoDo) {
        logger.info(String.format("用户新增  userInfoDo=%s", userInfoDo));
        final BaseResult result = new BaseResult();
        if (userInfoDo == null) {
            result.setSuccess(false);
        }

        return transactionTemplate.execute(new TransactionCallback<BaseResult>() {

            @Override
            public BaseResult doInTransaction(TransactionStatus status) {
                try {
                    String headImageUrl = userInfoDo.getHeadImage();
                    String pwd = userInfoDo.getPwdHash();
                    userInfoDo.setPwdHash(PwdUtils.hashPassword(pwd, userInfoDo.getPwdSalt()));
                    userInfoDo.setLocation(1);
                    userInfoDo.setStatus(StatusEnum.ENABLE.getCode());
                    String uid = userInfoRepository.add(userInfoDo);

                    if (StringUtils.isEmpty(uid)) {
                        result.setSuccess(false);
                        status.setRollbackOnly();
                    } else {
                        ImageInfoDo imageInfoDo = new ImageInfoDo();
                        imageInfoDo.setUid(uid);
                        imageInfoDo.setStatus(StatusEnum.ENABLE.getCode());
                        imageInfoDo.setType(ImageTypeEnum.HEAD.getCode());
                        imageInfoDo.setUrl(headImageUrl);

                        imageInfoRepository.add(imageInfoDo);
                        result.setSuccess(true);
                    }
                } catch (DuplicateKeyException e) {
                    logger.error(String.format("新增用户唯一约束  userInfoDo=%s ", userInfoDo), e);
                    status.setRollbackOnly();
                    result.setSuccess(false);
                    result.setCode(ResultCodeEnum.DUPLICATEKEY.getCode());
                } catch (Exception e2) {
                    logger.error(String.format("新增用户失败  userInfoDo=%s ", userInfoDo), e2);
                    status.setRollbackOnly();
                    result.setSuccess(false);
                    result.setCode(ResultCodeEnum.系统错误.getCode());
                }
                return result;
            }
        });
    }
}
