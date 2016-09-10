package cn.edu.ntu.jtxy.resp;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.model.wx.PointRecordDo;
import cn.edu.ntu.jtxy.core.repository.wx.PointRecordRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class PointRecordRepositoryTest extends BaseTest {

    @Test
    public void test_add() {
        PointRecordRepository resp = getContext().getBean(PointRecordRepository.class);

        PointRecordDo pointRecordDo = new PointRecordDo();
        pointRecordDo.setAmout(10);
        pointRecordDo.setMemo("add");
        pointRecordDo.setOperType(PointRecordDo.OperTypeEnum.ADD.getCode());
        pointRecordDo.setOrderNo("123412431");
        pointRecordDo.setPointAcId(1);
        pointRecordDo.setUid("231");
        long ret = resp.add(pointRecordDo);
        logger.info("xxxxxxret={}", ret);
    }
}
