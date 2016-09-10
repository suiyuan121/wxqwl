package cn.edu.ntu.jtxy.core.component.wx.impl;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

import cn.edu.ntu.jtxy.biz.service.client.WxClient;
import cn.edu.ntu.jtxy.core.component.wx.UserInfoComponent;
import cn.edu.ntu.jtxy.core.component.wx.result.BindResult;
import cn.edu.ntu.jtxy.core.model.BaseResult;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo.GradeTypeEnum;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo;
import cn.edu.ntu.jtxy.core.model.wx.UserInfoDo.StatusEnum;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo;
import cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo.GroupIdEnum;
import cn.edu.ntu.jtxy.core.repository.ResultCodeEnum;
import cn.edu.ntu.jtxy.core.repository.UserInfoConvertor;
import cn.edu.ntu.jtxy.core.repository.wx.StudentInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.UserInfoRepository;
import cn.edu.ntu.jtxy.core.repository.wx.WeiXinUserRepository;
import cn.edu.ntu.jtxy.core.repository.wx.cond.UserInfoCond;
import cn.edu.ntu.jtxy.util.PwdUtils;
import cn.edu.ntu.jtxy.web.SystemConstants;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: UserInfoComponentImpl.java, v 0.1 2016年4月25日 下午3:31:57 {jin.zhang@witontek.com} Exp $
 */
public class UserInfoComponentImpl implements UserInfoComponent, SystemConstants {

    private static final Logger   logger = LoggerFactory.getLogger(UserInfoComponentImpl.class);

    @Autowired
    private WeiXinUserRepository  weiXinUserRepository;

    /**  */
    @Autowired
    private StudentInfoRepository studentInfoRepository;

    @Autowired
    private WxClient              wxClient;

    @Autowired
    private UserInfoRepository    userInfoRepository;

    /** 
     * @see cn.edu.ntu.jtxy.core.component.wx.UserInfoComponent#bind(cn.edu.ntu.jtxy.core.model.wx.WeiXinUserDo, cn.edu.ntu.jtxy.core.model.wx.StudentInfoDo)
     */
    @Override
    public BindResult bind(WeiXinUserDo weiXinUserDo, StudentInfoDo studentInfoDo) {
        logger.info("微信号绑定用户     weiXinUserDo={},studentInfoDo={}");

        BindResult result = new BindResult();

        String openId = weiXinUserDo.getOpenId();
        String stuNo = studentInfoDo.getStuNo();

        if (WeiXinUserDo.SubscribeEnum.getByCode(weiXinUserDo.getSubscribe()) == WeiXinUserDo.SubscribeEnum.Y) {
            //已经订阅的用户，根据年级，对微信进行分组
            GradeTypeEnum grade = StudentInfoDo.GradeTypeEnum.getByCode(studentInfoDo.getGrade());
            boolean moveResult = wxClient.moveGroup(openId, getGroupId(grade));
            if (!moveResult) {
                logger.warn("用户移动分组失败  weiXinUserDo ={}", weiXinUserDo);
                result.setSuccess(false);
                result.setCode(ResultCodeEnum.移动分组失败.getCode());
                return result;
            }
        } else {
            result.setSuccess(false);
            result.setCode(ResultCodeEnum.未关注.getCode());
            return result;
        }

        //判断是否是解绑过的用户，解绑过的用户不需要新建
        UserInfoCond userInfoCond = new UserInfoCond();
        userInfoCond.setStuNo(stuNo);
        userInfoCond.setStatus(StatusEnum.UNBIND);
        List<UserInfoDo> userList2 = userInfoRepository.getByCond(userInfoCond);

        boolean retBind = false;
        UserInfoDo userInfoDo = new UserInfoDo();
        if (!CollectionUtils.isEmpty(userList2)) {
            logger.info("此学号用户已经存在   userList2={}", userList2);
            userInfoDo = userList2.get(0);
            userInfoDo.setOpenId(openId);
            //状态更改为可用状态
            userInfoDo.setStatus(UserInfoDo.StatusEnum.ENABLE.getCode());
            retBind = userInfoRepository.updateOpenId(userInfoDo);
        } else {
            userInfoDo.setIdNo(studentInfoDo.getIdNo());
            userInfoDo.setLoc(studentInfoDo.getAddress());
            userInfoDo.setMemo("add");
            userInfoDo.setNickName(weiXinUserDo.getNickName());
            userInfoDo.setOpenId(openId);
            userInfoDo.setPhone(studentInfoDo.getPhone());
            userInfoDo.setPwdSalt(UUID.randomUUID().toString());
            userInfoDo.setPwdHash(PwdUtils.hashPassword(studentInfoDo.getStuNo(),
                userInfoDo.getPwdSalt()));
            userInfoDo.setRealName(studentInfoDo.getRealName());
            userInfoDo.setSex(studentInfoDo.getSex());
            userInfoDo.setStatus(UserInfoDo.StatusEnum.ENABLE.getCode());
            userInfoDo.setStuNo(stuNo);
            userInfoDo.setUserType(UserInfoDo.UserTypeEnum.USER.getCode());
            BaseResult addRet = userInfoRepository.add(userInfoDo);
            retBind = addRet.isSuccess();
        }
        if (!retBind) {
            logger.warn("绑定增加用户失败 userInfoDo={}", userInfoDo);
            result.setSuccess(false);
            result.setCode(ResultCodeEnum.系统错误.getCode());
            return result;
        }

        result.setUserInfo(UserInfoConvertor.getUserInfo(userInfoDo));
        result.setSuccess(true);
        return result;

    }

    private String getGroupId(GradeTypeEnum grade) {
        if (grade == null) {
            return null;
        }
        switch (grade) {
            case YEAR_1:
                return GroupIdEnum.YEAR_1.getCode();
            case YEAR_2:
                return GroupIdEnum.YEAR_2.getCode();
            case YEAR_3:
                return GroupIdEnum.YEAR_3.getCode();
            case YEAR_4:
                return GroupIdEnum.YEAR_4.getCode();
            case GRAGUATION:
                return GroupIdEnum.GRAGUATION.getCode();
            default:
                return null;
        }
    }
}
