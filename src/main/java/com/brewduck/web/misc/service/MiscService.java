package com.brewduck.web.misc.service;

import com.brewduck.web.domain.Misc;

import java.util.List;


/**
 * <pre>
 * 맥주 기타 재료 Service 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
public interface MiscService {

    /**
     * <pre>
     * 맥주 기타 재료 목록 조회.
     * </pre>
     *
     * @param misc 맥주 기타 재료
     * @return 맥주 기타 재료 목록
     */
    public List<Misc> selectMiscList(Misc misc);

    /**
     * <pre>
     * 맥주 기타 재료 상세 조회.
     * </pre>
     *
     * @param misc 맥주 기타 재료
     * @return 맥주 기타 재료 내용
     */
    public Misc selectMiscDetail(Misc misc);

    /**
     * <pre>
     * 맥주 기타 재료 저장.
     * </pre>
     *
     * @param misc 맥주 기타 재료
     * @return 저장 성공 여부
     */
    public Boolean insertMisc(Misc misc);

    /**
     * <pre>
     * 맥주 기타 재료 수정.
     * </pre>
     *
     * @param misc 맥주 기타 재료
     * @return 수정 성공 여부
     */
    public Boolean updateMisc(Misc misc);

    /**
     * <pre>
     * 맥주 기타 재료 삭제.
     * </pre>
     *
     * @param misc 맥주 기타 재료
     * @return 삭제 성공 여부
     */
    public Boolean deleteMisc(Misc misc);

}
