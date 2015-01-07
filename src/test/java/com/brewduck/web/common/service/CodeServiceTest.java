package com.brewduck.web.common.service;

import com.brewduck.web.common.dao.CodeDao;
import com.brewduck.web.domain.Common;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertNotNull;


/**
 * <pre>
 * 계정 서비스 인터페이스.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CodeServiceTest {

    @Autowired
    private CodeDao codeDao;

    @Test
    @Ignore
    public void selectCodeMasterListTest() {
        Common common = new Common();
        List<Common> selectCodeMasterList = codeDao.selectCodeMaster();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectCodeMasterList);
    }

    @Test
    @Ignore
    public void selectCodeListTest() {
        Common common = new Common();
        List<Common> getSelectCodeList = codeDao.selectCodeList(common);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", getSelectCodeList);
    }
}
