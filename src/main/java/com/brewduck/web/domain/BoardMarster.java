package com.brewduck.web.domain;

/**
 * Created by ChaJunYoung on 14. 6. 1.
 */
public class BoardMarster {

    private static final long serialVersionUID = 1L;

    /** 게시판 속성코드 */
    private String bbsAttrbCode;

    /** 게시판 아이디 */
    private String bbsId;

    /** 게시판 소개 */
    private String bbsIntrcn;

    /** 게시판 명 */
    private String bbsNm;

    /** 게시판 유형코드 */
    private String bbsTyCode;

    /** 파일첨부가능여부 */
    private String fileAtchPosblAt;

    /** 최초등록자 아이디 */
    private String frstRegisterId;

    /** 최초등록시점 */
    private String frstRegisterPnttm;

    /** 최종수정자 아이디 */
    public String lastUpdusrId;

    /** 최종수정시점 */
    private String lastUpdusrPnttm;

    /** 첨부가능파일숫자 */
    private int posblAtchFileNumber = 0;

    /** 첨부가능파일사이즈 */
    private String posblAtchFileSize = null;

    /** 답장가능여부 */
    private String replyPosblAt;

    /** 템플릿 아이디 */
    private String tmplatId;

    /** 사용여부 */
    private String useAt;

    /** 사용플래그 */
    private String bbsUseFlag;

    /** 대상 아이디 */
    private String trgetId;

    /** 등록구분코드 */
    private String registSeCode;

    /** 유일 아이디 */
    private String uniqId;

    /** 템플릿 명 */
    private String tmplatNm;

    /** 추가 option (댓글-comment, 만족도조사-stsfdg) */
    private String option;

    /** 댓글 여부 */
    private String commentAt;

    /** 만족도조사 */
    private String stsfdgAt;


}
