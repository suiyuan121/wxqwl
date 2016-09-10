package cn.edu.ntu.jtxy.resp;

import org.junit.Test;

import cn.edu.ntu.jtxy.BaseTest;
import cn.edu.ntu.jtxy.core.model.wx.PointDo;
import cn.edu.ntu.jtxy.core.repository.wx.PointRepository;

/**
 * 
 * @author {jin.zhang@witontek.com}
 * @version $Id: RefreshTokenRepository.java, v 0.1 2016年3月23日 下午8:32:05 {jin.zhang@witontek.com} Exp $
 */
public class PointRepositoryTest extends BaseTest {

    @Test
    public void test_add() {
        PointRepository resp = getContext().getBean(PointRepository.class);

        PointDo pointDo = new PointDo();
        pointDo.setUid("324329432");
        pointDo.setStatus(PointDo.StatusEnum.ENABLE.getCode());
        pointDo.setPointAmout(10);
        pointDo.setPointType(PointDo.PointTypeEnum.SIGN.getCode());
        long ret = resp.add(pointDo);
        logger.info("xxxxxxlist={}", ret);
    }
}
