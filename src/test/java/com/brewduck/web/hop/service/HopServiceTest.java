package com.brewduck.web.hop.service;

import com.brewduck.web.domain.Hop;
import com.brewduck.web.hop.dao.HopDao;
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
 * 맥주 홉 테스트
 * </pre>
 *
 * @author chacha
 * @version 1.0, 2014.12.28
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class HopServiceTest {

    @Autowired
    private HopDao hopDao;

    private Hop hop;
    private int listSize;


    @Before
    public void setUp() {
        hop = new Hop();
        listSize = 158;

    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout = 5000)
    public void selectHopListTest() {
        List<Hop> selectHopListTest = hopDao.selectHopList(hop);
        assertThat(true, is(selectHopListTest.size() > 0));
        assertEquals(listSize, selectHopListTest.size());
    }

    /**
     * 데이터 테스트
     */
    @Test(timeout = 5000)
    public void notEmptyTest() {
        List<Hop> selectHopList = hopDao.selectHopList(hop);

        //필수입력 테스트
        for (int i = 0; i < selectHopList.size(); i++) {

            //이름
            assertNotNull("색상코드 확인", ((Hop) (selectHopList.get(i))).getName());
            //TODO : SpecificGravity 0이상이어야 함
            assertThat(true, is(((Hop) (selectHopList.get(i))).getAlpha() > 0));
            //발효재료 색상 0이상
            assertNotNull("색상코드 확인", ((Hop) (selectHopList.get(i))).getTypeCode());

        }

    }

    /**
     * <pre>
     * 기본 수행 테스트
     * </pre>
     */
    @Test(timeout = 5000)
    public void selectHopDetailTest() {
        Hop selectHopDetail = new Hop();
        hop.setId(1);
        selectHopDetail = hopDao.selectHopDetail(hop);
        assertThat(true, is(selectHopDetail != null));
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopDetail);
        assertThat(true, is(selectHopDetail.getName().equals("Admiral")));
    }


    /**
     * <pre>
     * 홉 아로마 리스트
     * </pre>
     */
    public void selectAromaListTest() {
        Hop hop = new Hop();
        List<Hop> selectHopAromaListTest = hopDao.selectHopAromaList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopAromaListTest);
    }

    /**
     * <pre>
     * 홉 사용용도 리스트
     * </pre>
     */
    @Test(timeout = 5000)
    public void selectHopUsedForListTest() {
        hop.setId(1);
        List<Hop> selectHopUsedForListTest = hopDao.selectHopUsedForList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopUsedForListTest);
    }

    /**
     * <pre>
     * 홉 아로마 리스트
     * </pre>
     */
    @Test(timeout = 5000)
    public void selectHopAromaListTest() {
        hop.setId(1);
        List<Hop> selectHopAromaListTest = hopDao.selectHopAromaList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopAromaListTest);
    }

    /**
     * <pre>
     * 홉 대체 리스트
     * </pre>
     */
    @Test(timeout = 5000)
    public void selectHopSubstitutesListTest() {
        hop.setId(1);
        List<Hop> selectHopSubstitutesListTest = hopDao.selectHopSubstitutesList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopSubstitutesListTest);
    }

    /**
     * <pre>
     * 맥주 홉 유틸.
     * </pre>
     */
    public void selectUtilizationTest() {
        Hop hop = new Hop();
        Hop selectUtilization = new Hop();

        selectUtilization = hopDao.selectUtilization(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectUtilization);
    }

    /**
     * <pre>
     * 맥주 홉 랜덤 조회.
     * </pre>
     */
    public void selectRandomHopTest() {
        Hop hop = new Hop();
        Hop selectRandomHop = new Hop();

        selectRandomHop = hopDao.selectRandomHop();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectRandomHop);
    }

    /**
     * <pre>
     * 맥주 홉 국가 별 갯수 조회.
     * </pre>
     */
    public void countHopOriginTest() {
        Hop hop = new Hop();
        Hop countHopOrigin = new Hop();

        countHopOrigin = hopDao.countHopOrigin();
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", countHopOrigin);
    }

    /**
     * <pre>
     * 맥주 홉 저장.
     * </pre>
     */
    public void insertHopTest() {
        Hop hop = new Hop();
        Integer insertHop = hopDao.insertHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertHop);
    }

    /**
     * <pre>
     * 맥주 홉 수정.
     * </pre>
     */
    public void updateHopTest() {
        Hop hop = new Hop();
        Integer updateHop = hopDao.updateHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateHop);
    }

    /**
     * <pre>
     * 맥주 홉 수정 성공 횟수.
     * </pre>
     */
    public void updateViewCountTest() {
        Hop hop = new Hop();
        Integer updateViewCount = hopDao.updateViewCount(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateViewCount);
    }

    /**
     * <pre>
     * 맥주 홉 삭제.
     * </pre>
     */
    public void deleteHopTest() {
        Hop hop = new Hop();
        Integer deleteHop = hopDao.deleteHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteHop);
    }

}
