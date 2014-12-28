package com.brewduck.web.style.service;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.dao.StyleDao;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.*;
import static org.junit.Assert.assertThat;


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
public class StyleServiceTest {

    @Autowired
    private StyleDao styleDao;


    private Style style;
    private int listSize;


    @Before
    public void setUp(){
        style = new Style();
        listSize = 77;

    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout=5000)
    public void selectStyleListTest() {
        List<Style> selectStyleListTest = styleDao.selectStyleList(style);
        assertThat(true,  is(selectStyleListTest.size() > 0));
        assertEquals(listSize, selectStyleListTest.size());
    }

    /**
     * <pre>
     * 기본 수행 테스트
     * </pre>
     */
    @Test(timeout=5000)
    public void selectStyleDetailTest() {
        Style selectStyleDetail = new Style();
        style.setId(1);
        selectStyleDetail = styleDao.selectStyleDetail(style);
        assertThat(true,  is(selectStyleDetail != null));
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectStyleDetail);
        assertThat(true, is(selectStyleDetail.getName().equals("Fruit Lambic")));
    }


    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     */
    public void insertStyleTest(){
        Integer insertStyle = styleDao.insertStyle(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertStyle);
    }

    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     */
    public void updateStyleTest(){
        Integer updateStyle = styleDao.updateStyle(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateStyle);
    }

    /**
     * <pre>
     * 맥주 스타일 삭제.
     * </pre>
     */
    public void deleteStyleTest(){
        Style style = new Style();
        Integer deleteStyle = styleDao.deleteStyle(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteStyle);
    }

    @After
    public void tearDown() throws Exception {
        System.out.println("complete");

    }
}
