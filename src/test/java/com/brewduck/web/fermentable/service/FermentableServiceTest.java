package com.brewduck.web.fermentable.service;

import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.fermentable.dao.FermentableDao;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.*;


/**
 * <pre>
 * 발효재료 테스트 서비스
 * </pre>
 *
 * @author 차준영
 * @version 1.0, 2014.12.27
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class FermentableServiceTest {

    @Autowired
    private FermentableDao fermentableDao;

    private Fermentable fermentable;
    private int listSize;


    @Before
    public void setUp(){
        fermentable = new Fermentable();
        listSize = 77;

    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout=5000)
    public void selectFermentableListTest() {
        List<Fermentable> selectFermentableListTest = fermentableDao.selectFermentableList(fermentable);
        assertThat(true,  is(selectFermentableListTest.size() > 0));
        assertEquals(listSize, selectFermentableListTest.size());
    }

    @Test(timeout=5000)
    public void notNullDataTest() {
        List<Fermentable> selectFermentableList = fermentableDao.selectFermentableList(fermentable);


        for(int i=0;i<selectFermentableList.size();i++){
            assertThat(true, is(((Fermentable) (selectFermentableList.get(i))).getSpecificGravity() > 0));
            assertThat(true, is(((Fermentable) (selectFermentableList.get(i))).getColor() > 0));
            assertNotNull("색상코드 확인", ((Fermentable) (selectFermentableList.get(i))).getColorCode());
        }

    }

    /**
     * <pre>
     * 기본 수행 테스트
     * </pre>
     */
    @Test(timeout=5000)
    public void selectFermentableDetailTest() {
        Fermentable selectFermentableDetail = new Fermentable();
        //fermentable.setId(1);
        selectFermentableDetail = fermentableDao.selectFermentableDetail(fermentable);
        assertThat(true,  is(selectFermentableDetail != null));
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectFermentableDetail);
        assertThat(true, is(selectFermentableDetail.getName().equals("Amber Dry Extract")));
    }

    /**
     * <pre>
     * 맥주 맥아 목록 조회.
     * </pre>
     */
    public void selectFermentableGroupListTest(){
        Fermentable fermentable = new Fermentable();
        List<Fermentable> selectFermentableGroupListTest = fermentableDao.selectFermentableGroupList();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectFermentableGroupListTest);
    }


    /**
     * <pre>
     * 맥주 맥아 국가 별 갯수 조회.
     * </pre>
     */
    public void countFermentableOriginTest(){
        Fermentable fermentable = new Fermentable();
        Fermentable countFermentableOrigin = new Fermentable();

        countFermentableOrigin = fermentableDao.countFermentableOrigin();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", countFermentableOrigin);
    }

    /**
     * <pre>
     * 맥주 맥아 저장.
     * </pre>
     */
    public void insertFermentableTest(){
        Fermentable fermentable = new Fermentable();
        Integer insertFermentable =  fermentableDao.insertFermentable(fermentable);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertFermentable);
    }

    /**
     * <pre>
     * 맥주 맥아 수정.
     * </pre>
     */
    public void updateFermentableTest(){
        Fermentable fermentable = new Fermentable();
        Integer updateFermentable =  fermentableDao.updateFermentable(fermentable);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateFermentable);
    }


    /**
     * <pre>
     * 맥주 맥아 삭제.
     * </pre>
     */
    public void deleteFermentableTest(){
        Fermentable fermentable = new Fermentable();
        Integer deleteFermentable =  fermentableDao.deleteFermentable(fermentable);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteFermentable);
    }

}
