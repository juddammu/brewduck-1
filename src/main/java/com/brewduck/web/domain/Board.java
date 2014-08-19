package com.brewduck.web.domain;

import org.apache.ibatis.session.ResultHandler;

import java.util.Date;
import java.util.PriorityQueue;

/**
 * Created with IntelliJ IDEA.
 * User: hukoru
 * Date: 13. 8. 26
 * Time: 오후 11:53
 * To change this template use File | Settings | File Templates.
 */
public class Board{

    private static final long serialVersionUID = 1L;

    //게시물 ID
    private Integer nttId;

    private Integer userId;

    private Integer recipeId;

    //게시판 ID
    private Integer  bbsId;

    private String  bbsTyCode;

    private String  bbsAttrbCode;

    private String  bbsIntrcn;

    private String  replyPosblAt;

    private String  fileAtchPosblAt;

    private Integer  posblAtchFileNumber;

    private Integer  posblAtchFileSize;

    private String  tmplatId;

    private String  frstRegisterId;

    //게시물 번호
    private Integer nttNo;
    //게시물 제목
    private String  nttSj;
    //게시물 내용
    private String  nttCn;
    //답변여부
    private String  answerAt;
    //부모글 번호
    private Integer parntscttNo;
    //답변 위치
    private Integer answerLc;
    //정렬순서
    private Integer sortOrder;
    //조회수
    private Integer rdcnt;
    //게시시작일
    private String  ntceBgnde;
    //게시종료일
    private String  ntceEndde;
    //게시자 ID
    private String  ntcrId;
    //게시자 명
    private String  ntcrNm;
    //게시물 첨부파일 아이디
    private String  atchFileId;

    private String  atchFileName;

    private String atchCoverFileId;

    private String atchCoverFileName;

    //원글 게시판 번호
    private int answerNo;
    //작성자 ID
    private String wrterId;
    //작성자 이름
    private String wrterNm;
    //댓글 내용
    private String answer;
    //사용여부
    private String useAt;
    //입력시간
    private String insertDate;
    //입력자 아이디
    private String insertId;
    //수정시간
    private String updateDate;
    //수정아이디
    private String updateId;
    //패스워드
    private String password;
    //게시판명
    private String  bbsNm;

    //게시판 영문명
    private String  bbsEnNm;

    private String searchVal;

    private Integer nextIntegerId;

    private String sort;

    private  String deleteId;

    private String deletDate;

    private Integer bbsType;

    private String amswer;

    private Integer insertFlag;

    private String countNum;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(Integer recipeId) {
        this.recipeId = recipeId;
    }

    public String getAtchFileName() {
        return atchFileName;
    }

    public String getAtchCoverFileId() {
        return atchCoverFileId;
    }

    public void setAtchCoverFileId(String atchCoverFileId) {
        this.atchCoverFileId = atchCoverFileId;
    }

    public String getAtchCoverFileName() {
        return atchCoverFileName;
    }

    public void setAtchCoverFileName(String atchCoverFileName) {
        this.atchCoverFileName = atchCoverFileName;
    }

    public void setAtchFileName(String atchFileName) {
        this.atchFileName = atchFileName;
    }

    public Integer getInsertFlag() {
        return insertFlag;
    }

    public void setInsertFlag(Integer insertFlag) {
        this.insertFlag = insertFlag;
    }

    public String getBbsTyCode() {
        return bbsTyCode;
    }

    public void setBbsTyCode(String bbsTyCode) {
        this.bbsTyCode = bbsTyCode;
    }

    public String getBbsAttrbCode() {
        return bbsAttrbCode;
    }

    public void setBbsAttrbCode(String bbsAttrbCode) {
        this.bbsAttrbCode = bbsAttrbCode;
    }

    public String getBbsIntrcn() {
        return bbsIntrcn;
    }

    public void setBbsIntrcn(String bbsIntrcn) {
        this.bbsIntrcn = bbsIntrcn;
    }

    public String getReplyPosblAt() {
        return replyPosblAt;
    }

    public void setReplyPosblAt(String replyPosblAt) {
        this.replyPosblAt = replyPosblAt;
    }

    public String getFileAtchPosblAt() {
        return fileAtchPosblAt;
    }

    public void setFileAtchPosblAt(String fileAtchPosblAt) {
        this.fileAtchPosblAt = fileAtchPosblAt;
    }

    public Integer getPosblAtchFileNumber() {
        return posblAtchFileNumber;
    }

    public void setPosblAtchFileNumber(Integer posblAtchFileNumber) {
        this.posblAtchFileNumber = posblAtchFileNumber;
    }

    public Integer getPosblAtchFileSize() {
        return posblAtchFileSize;
    }

    public void setPosblAtchFileSize(Integer posblAtchFileSize) {
        this.posblAtchFileSize = posblAtchFileSize;
    }

    public String getTmplatId() {
        return tmplatId;
    }

    public void setTmplatId(String tmplatId) {
        this.tmplatId = tmplatId;
    }

    public String getFrstRegisterId() {
        return frstRegisterId;
    }

    public void setFrstRegisterId(String frstRegisterId) {
        this.frstRegisterId = frstRegisterId;
    }

    public int getAnswerNo() {
        return answerNo;
    }

    public void setAnswerNo(int answerNo) {
        this.answerNo = answerNo;
    }

    public String getWrterId() {
        return wrterId;
    }

    public void setWrterId(String wrterId) {
        this.wrterId = wrterId;
    }

    public String getWrterNm() {
        return wrterNm;
    }

    public void setWrterNm(String wrterNm) {
        this.wrterNm = wrterNm;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(String insertDate) {
        this.insertDate = insertDate;
    }

    public String getInsertId() {
        return insertId;
    }

    public void setInsertId(String insertId) {
        this.insertId = insertId;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Integer getNttId() {
        return nttId;
    }

    public void setNttId(Integer nttId) {
        this.nttId = nttId;
    }

    public Integer getBbsId() {
        return bbsId;
    }

    public void setBbsId(Integer bbsId) {
        this.bbsId = bbsId;
    }

    public Integer getNttNo() {
        return nttNo;
    }

    public void setNttNo(Integer nttNo) {
        this.nttNo = nttNo;
    }

    public String getNttSj() {
        return nttSj;
    }

    public void setNttSj(String nttSj) {
        this.nttSj = nttSj;
    }

    public String getNttCn() {
        return nttCn;
    }

    public void setNttCn(String nttCn) {
        this.nttCn = nttCn;
    }

    public String getAnswerAt() {
        return answerAt;
    }

    public void setAnswerAt(String answerAt) {
        this.answerAt = answerAt;
    }

    public Integer getParntscttNo() {
        return parntscttNo;
    }

    public void setParntscttNo(Integer parntscttNo) {
        this.parntscttNo = parntscttNo;
    }

    public Integer getAnswerLc() {
        return answerLc;
    }

    public void setAnswerLc(Integer answerLc) {
        this.answerLc = answerLc;
    }

    public Integer getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    public Integer getRdcnt() {
        return rdcnt;
    }

    public void setRdcnt(Integer rdcnt) {
        this.rdcnt = rdcnt;
    }

    public String getUseAt() {
        return useAt;
    }

    public void setUseAt(String useAt) {
        this.useAt = useAt;
    }

    public String getNtceBgnde() {
        return ntceBgnde;
    }

    public void setNtceBgnde(String ntceBgnde) {
        this.ntceBgnde = ntceBgnde;
    }

    public String getNtceEndde() {
        return ntceEndde;
    }

    public void setNtceEndde(String ntceEndde) {
        this.ntceEndde = ntceEndde;
    }

    public String getNtcrId() {
        return ntcrId;
    }

    public void setNtcrId(String ntcrId) {
        this.ntcrId = ntcrId;
    }

    public String getNtcrNm() {
        return ntcrNm;
    }

    public void setNtcrNm(String ntcrNm) {
        this.ntcrNm = ntcrNm;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAtchFileId() {
        return atchFileId;
    }

    public void setAtchFileId(String atchFileId) {
        this.atchFileId = atchFileId;
    }

    public String getBbsNm() {
        return bbsNm;
    }

    public void setBbsNm(String bbsNm) {
        this.bbsNm = bbsNm;
    }

    public String getSearchVal() {
        return searchVal;
    }

    public void setSearchVal(String searchVal) {
        this.searchVal = searchVal;
    }

    public Integer getNextIntegerId() {
        return nextIntegerId;
    }

    public void setNextIntegerId(Integer nextIntegerId) {
        this.nextIntegerId = nextIntegerId;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(String deleteId) {
        this.deleteId = deleteId;
    }

    public String getDeletDate() {
        return deletDate;
    }

    public void setDeletDate(String deletDate) {
        this.deletDate = deletDate;
    }

    public String getBbsEnNm() {
        return bbsEnNm;
    }

    public void setBbsEnNm(String bbsEnNm) {
        this.bbsEnNm = bbsEnNm;
    }

    public Integer getBbsType() {
        return bbsType;
    }

    public void setBbsType(Integer bbsType) {
        this.bbsType = bbsType;
    }

    public String getAmswer() {
        return amswer;
    }

    public void setAmswer(String amswer) {
        this.amswer = amswer;
    }

    public String getCountNum() {
        return countNum;
    }

    public void setCountNum(String countNum) {
        this.countNum = countNum;
    }
}
