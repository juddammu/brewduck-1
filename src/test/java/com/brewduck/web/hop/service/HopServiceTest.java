package com.brewduck.web.hop.service;

import com.brewduck.web.domain.Hop;
import com.brewduck.web.Hop.dao.hopDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * <pre>
 * 맥주 홉 Service 구현체.
 * </pre>
 *
 * @author  chacha
 * @version 1.0, 2014.12.28
 */
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
public class HopServiceTest {

    @Autowired
    private HopDao hopDao;

    /**
     * <pre>
     * 맥주 홉 목록 조회.
     * </pre>
     */
    @Test
    public void selectHopListTest() {
        Hop hop = new Hop();
        List<Hop> selectHopListTest = hopDao.selectHopList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopListTest);
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
    public void selectHopUsedForListTest(){
        Hop hop = new Hop();
        List<Hop> selectHopUsedForListTest = hopDao.selectHopUsedForList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopUsedForListTest);
    }

    /**
     * <pre>
     * 홉 아로마 리스트
     * </pre>
     */
    public void selectHopAromaListTest(){
        Hop hop = new Hop();
        List<Hop> selectHopAromaListTest = hopDao.selectHopAromaList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopAromaListTest);
    }
    
    /**
     * <pre>
     * 홉 대체 리스트
     * </pre>
     */
    public void selectHopSubstitutesListTest(){
        Hop hop = new Hop();
        List<Hop> selectHopSubstitutesListTest = hopDao.selectHopSubstitutesList(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopSubstitutesListTest);
    }

    /**
     * <pre>
     * 맥주 홉 상세 조회.
     * </pre>
     */
    public void selectHopDetailTest() {
        Hop hop = new Hop();
        Hop selectHopDetail = new Hop();

        selectHopDetail = hopDao.selectHopDetail(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopDetail);
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

        selectRandomHop = hopDao.selectRandomHop(hop);
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

        countHopOrigin = hopDao.countHopOrigin(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", countHopOrigin);
    }

    /**
     * <pre>
     * 맥주 홉 저장.
     * </pre>
     */
    public void insertHopTest() {
        Hop hop = new Hop();
        Integer insertHop =  hopDao.insertHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", insertHop);
    }

    /**
     * <pre>
     * 맥주 홉 수정.
     * </pre>
     */
    public void updateHopTest() {
        Hop hop = new Hop();
        Integer updateHop =  hopDao.updateHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateHop);
    }

    /**
     * <pre>
     * 맥주 홉 수정 성공 횟수.
     * </pre>
     */
    public void updateViewCountTest() {
        Hop hop = new Hop();
        Integer updateViewCount =  hopDao.updateViewCount(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", updateViewCount);
    }

    /**
     * <pre>
     * 맥주 홉 삭제.
     * </pre>
     */
    public voiddeleteHopTest() {
        Hop hop = new Hop();
        Integer deleteHop =  hopDao.deleteHop(hop);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", deleteHop);
    }
    
}
