package com.brewduck.web.domain;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: hukoru
 * Date: 13. 8. 26
 * Time: 오후 11:53
 * To change this template use File | Settings | File Templates.
 */
public class Common {

    private static final long serialVersionUID = 1L;

    //일련번호
    private Integer id;

    //코드설정
    private String commonSet;

    //공통코드
    private String commonCode;

    //이름
    private String name;

    //SEO를 위한 타이틀 URL
    private String titleInUrl;

    //저장아이디
    private String insertId;

    //저장일자
    private Date insertDate;

    //수정아이디
    private String updateId;

    //수정일자
    private Date updateDate;

    //삭제아이디
    private String deleteId;

    //삭제일자
    private Date deleteDate;

    //버젼
    private String version;

    //종류코드
    private String typeCode;

    //원산지코드	VARCHAR(2)
    private String originCode;

    //한글이름	VARCHAR(400)
    private String koreanName;

    //표시이름	VARCHAR(400)
    private String displayName;

    //수량	DOUBLE
    private Double amounts;

    //무게단위코드	VARCHAR(2)
    private String weightUnitCode;

    //사용코드	VARCHAR(2)
    private String useCode;

    //속성코드	VARCHAR(6)
    private String attrbCode;

    //시간코드	VARCHAR(2)
    private String timeCode;

    //양조자 아이디	INTEGER
    private Integer brewerId;

    //설명	TEXT
    private String notes;

    //한글 설명	TEXT
    private String koreanNotes;

    //시간	INTEGER
    private String time;

    //사용여부	VARCHAR(1)
    private String useYn;

    //조회수	INTEGER
    private Integer readCnt;

    //번호	INTEGER
    private Integer num;

    //제목	VARCHAR(2000)
    private String subject;

    //내용	TEXT
    private String content;

    //무게	DOUBLE
    private Double weight;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommonSet() {
        return commonSet;
    }

    public void setCommonSet(String commonSet) {
        this.commonSet = commonSet;
    }

    public String getCommonCode() {
        return commonCode;
    }

    public void setCommonCode(String commonCode) {
        this.commonCode = commonCode;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getKoreanNotes() {
        return koreanNotes;
    }

    public void setKoreanNotes(String koreanNotes) {
        this.koreanNotes = koreanNotes;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getUseYn() {
        return useYn;
    }

    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

    public Integer getReadCnt() {
        return readCnt;
    }

    public void setReadCnt(Integer readCnt) {
        this.readCnt = readCnt;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInsertId() {
        return insertId;
    }

    public void setInsertId(String insertId) {
        this.insertId = insertId;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public String getUpdateId() {
        return updateId;
    }

    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(String deleteId) {
        this.deleteId = deleteId;
    }

    public Date getDeleteDate() {
        return deleteDate;
    }

    public void setDeleteDate(Date deleteDate) {
        this.deleteDate = deleteDate;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public String getOriginCode() {
        return originCode;
    }

    public void setOriginCode(String originCode) {
        this.originCode = originCode;
    }

    public String getKoreanName() {
        return koreanName;
    }

    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public Double getAmounts() {
        return amounts;
    }

    public void setAmounts(Double amounts) {
        this.amounts = amounts;
    }

    public String getWeightUnitCode() {
        return weightUnitCode;
    }

    public void setWeightUnitCode(String weightUnitCode) {
        this.weightUnitCode = weightUnitCode;
    }

    public String getUseCode() {
        return useCode;
    }

    public void setUseCode(String useCode) {
        this.useCode = useCode;
    }

    public String getAttrbCode() {
        return attrbCode;
    }

    public void setAttrbCode(String attrbCode) {
        this.attrbCode = attrbCode;
    }

    public String getTimeCode() {
        return timeCode;
    }

    public void setTimeCode(String timeCode) {
        this.timeCode = timeCode;
    }

    public Integer getBrewerId() {
        return brewerId;
    }

    public void setBrewerId(Integer brewerId) {
        this.brewerId = brewerId;
    }

    public String getTitleInUrl() {
        return titleInUrl;
    }

    public void setTitleInUrl(String titleInUrl) {

        titleInUrl = titleInUrl.trim().replaceAll("[^a-zA-Z0-9\\-\\s\\.]", "");
        titleInUrl = titleInUrl.replaceAll("[\\-| |\\.]+", "-");

        this.titleInUrl = titleInUrl;
    }
}
