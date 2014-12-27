package com.brewduck.web.style.service;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.dao.StyleDao;
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
public class StyleServiceTest {

    @Autowired
    private StyleDao styleDao;

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     */
    @Test
    public void selectStyleListTest() {
        Style style = new Style();
        List<Style> selectStyleListTest = styleDao.selectStyleList(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectStyleListTest);
    }

    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     */
    public void selectStyleDetailTest() {
        Style style = new Style();
        Style selectStyleDetail = new Style();

        selectStyleDetail = styleDao.selectStyleDetail(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectStyleDetail);
    }

    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     */
    public void insertStyleTest(){
        Style style = new Style();
        Integer insertStyle = styleDao.insertStyle(style);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertStyle);
    }

    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     */
    public void updateStyleTest(){
        Style style = new Style();
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

}
