package com.brewduck.web.misc.service;

import com.brewduck.web.domain.Misc;
import com.brewduck.web.misc.dao.MiscDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertNotNull;


/**
 * <pre>
 * 맥주 기타 재료 Service 인터페이스
 * </pre>
 *
 * @author chacha
 * @version 1.0, 2014.12.28
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MiscServiceTest {

    @Autowired
    private MiscDao miscDao;

    private Misc misc;
    private int listSize;


    @Before
    public void setUp(){
        misc = new Misc();
        listSize = 77;

    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout=5000)
    public void selectMiscListTest() {
        List<Misc> selectMiscListTest = miscDao.selectMiscList(misc);
        assertThat(true,  is(selectMiscListTest.size() > 0));
        assertEquals(listSize, selectMiscListTest.size());
    }

    /**
     * <pre>
     * 기본 수행 테스트
     * </pre>
     */
    @Test(timeout=5000)
    public void selectMiscDetailTest() {
        Misc selectMiscDetail = new Misc();
        misc.setId(1);
        selectMiscDetail = miscDao.selectMiscDetail(misc);
        assertThat(true,  is(selectMiscDetail != null));
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectMiscDetail);
        assertThat(true, is(selectMiscDetail.getName().equals("Fruit Lambic")));
    }

    /**
     * <pre>
     * 맥주 기타 재료 타입 별갯수 조회.
     * </pre>
     */
    public void countMiscTypeTest(){
        Misc misc = new Misc();
        Misc countMiscType = new Misc();

        countMiscType = miscDao.countMiscType(misc);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", countMiscType);

    }


    /**
     * <pre>
     * 맥주 기타 재료 저장.
     * </pre>
     */
    public void insertMiscTest(){
        Misc misc = new Misc();
        Integer insertMisc =  miscDao.insertMisc(misc);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertMisc);
    }

    /**
     * <pre>
     * 맥주 기타 재료 수정.
     * </pre>
     */
    public void updateMiscTest(){
        Misc misc = new Misc();
        Integer updateMisc =  miscDao.updateMisc(misc);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateMisc);
    }

    /**
     * <pre>
     * 맥주 기타 재료 삭제.
     * </pre>
     */
    public void deleteMiscTest(){
        Misc misc = new Misc();
        Integer deleteMisc =  miscDao.deleteMisc(misc);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteMisc);
    }

}
