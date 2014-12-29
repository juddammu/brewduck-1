package com.brewduck.web.yeast.service;

import com.brewduck.web.domain.Yeast;
import com.brewduck.web.yeast.dao.YeastDao;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
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
public class YeastServiceTest {

    @Autowired
    private YeastDao yeastDao;

    private Yeast yeast;
    private int listSize;


    @Before
    public void setUp(){
        yeast = new Yeast();
        listSize = 77;

    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout=5000)
    public void selectYeastListTest() {
        List<Yeast> selectYeastListTest = yeastDao.selectYeastList(yeast);
        assertThat(true,  is(selectYeastListTest.size() > 0));
        assertEquals(listSize, selectYeastListTest.size());
    }

    /**
     * <pre>
     * 기본 수행 테스트
     * </pre>
     */
    @Test(timeout=5000)
    public void selectYeastDetailTest() {
        Yeast selectYeastDetail = new Yeast();
        //yeast.setId(1);
        selectYeastDetail = yeastDao.selectYeastDetail(yeast);
        assertThat(true,  is(selectYeastDetail != null));
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectYeastDetail);
        assertThat(true, is(selectYeastDetail.getName().equals("Abbey Ale")));
    }

    /**
     * <pre>
     * 맥주 이스트 타입 별 갯수 조회.
     * </pre>
     */
    public void countYeastTypeTest(){
        Yeast yeast = new Yeast();
        Yeast countYeastType = new Yeast();

        countYeastType = yeastDao.countYeastType();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", countYeastType);

    }

    /**
     * <pre>
     * 맥주 이스트 저장.
     * </pre>
     */
    public void insertYeastTest(){
        Yeast yeast = new Yeast();
        Integer insertYeast =  yeastDao.insertYeast(yeast);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertYeast);
    }

    /**
     * <pre>
     * 맥주 이스트 수정.
     * </pre>
     */
    public void updateYeastTest(){
        Yeast yeast = new Yeast();
        Integer updateYeast =  yeastDao.updateYeast(yeast);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateYeast);
    }

    /**
     * <pre>
     * 맥주 이스트 삭제.
     * </pre>
     */
    public void deleteYeastTest(){
        Yeast yeast = new Yeast();
        Integer deleteYeast =  yeastDao.deleteYeast(yeast);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteYeast);
    }
}
