package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 기타 재료, Value Object
 * <p/>
 * 신재근, 2014-02-27
 */
public class Misc implements Serializable {
    private static final long serialVersionUID = 1L;

    private String titleInUrl;

    // 기타 재료 순번
    private Integer seq;
    // 기타 재료 ID
    private Integer id;
    // 기타 재료 영문명
    private String name;
    // 기타 재료 한글명
    private String koreanName;
    // 기타 재료 버전
    private Integer version;
    // 기타 재료 종류 ("Spice", "Fining", "Water Agent", "Herb", "Flavor" or "Other")
    private String type;
    // 기타 재료 종류 ("Spice", "Fining", "Water Agent", "Herb", "Flavor" or "Other")
    private String typeCode;
    // 기타 재료 사용 ("Boil", "Mash", "Primary", "Secondary", "Bottling")
    private String miscUse;
    // 기타 재료의 사용되는 시간
    private Integer time;
    // 기타 재료의 무게(kg) 또는 양(리터, L)
    private Integer amount;
    // 기타 재료의 무게, 양을 측정 여부
    private Boolean amountIsWeight;
    // 기타 재료의 사용 항목에 대한 간단한 설명
    private String useFor;
    // 기타 재료의 사용 항목에 대한 한글 설명
    private String useForKorean;
    // 기타 재료의 사용 항목에 대한 상세한 설명
    private String notes;
    // 작성자 아이디
    private String insertId;
    // 작성자 날짜
    private Date insertDate;
    // 수정자 아이디
    private String updateId;
    // 수정자 날짜
    private Date updateDate;
    // 삭제자 아이디
    private String deleteId;
    // 삭제자 날짜
    private Date deleteDate;
    // 저장 성공 여부
    private Boolean insertFlag;
    // 수정 성공 여부
    private Boolean updateFlag;
    // 삭제 성공 여부
    private Boolean deleteFlag;
    //기타 재료 타입 향신료 카운트
    public String spiceCnt;
    //기타 재료 타입 향신료 이름
    public String spiceCntName;
    //기타 재료 타입 풍미 카운트
    public String flavorCnt;
    //기타 재료 타입 풍미 이름
    public String flavorCntName;
    //기타 재료 타입 첨가물 카운트
    public String waterAgentCnt;
    //기타 재료 타입 첨가물 이름
    public String waterAgentCntName;
    //기타 재료 타입 청정제 카운트
    public String finingCnt;
    //기타 재료 타입 청정제 이름
    public String finingCntName;
    //기타 재료 타입 허브 카운트
    public String herbCnt;
    //기타 재료 타입 허브 이름
    public String herbCntName;
    //기타 재료 타입 기타 카운트
    public String otherCnt;
    //기타 재료 타입 기타 이름
    public String otherCntName;
    //기타 재료 타입 한글 타입
    public String typeKorean;

    public String brewer;

    /**
     * 기타 재료 영문명
     *
     * @return 기타 재료 영문명
     */
    public String getName() {
        return name;
    }

    /**
     * 기타 재료 영문명
     *
     * @param name 기타 재료 영문명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 기타 재료 한글명
     *
     * @return 기타 재료 한글명
     */
    public String getKoreanName() {
        return koreanName;
    }

    /**
     * 기타 재료 한글명
     *
     * @param koreanName 기타 재료 한글명
     */
    public void setKoreanName(String koreanName) {
        this.koreanName = koreanName;
    }

    /**
     * 기타 재료 버전
     *
     * @return 기타 재료 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 기타 재료 버전
     *
     * @param version 기타 재료 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 기타 재료 종류
     *
     * @return 기타 재료 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 기타 재료 종류
     *
     * @param type 기타 재료 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 기타 재료 사용
     *
     * @return 기타 재료 사용
     */
    public String getMiscUse() {
        return miscUse;
    }

    /**
     * @param miscUse
     */
    public void setMiscUse(String miscUse) {
        this.miscUse = miscUse;
    }

    /**
     * 기타 재료의 사용되는 시간
     *
     * @return 기타 재료의 사용되는 시간
     */
    public Integer getTime() {
        return time;
    }

    /**
     * 기타 재료의 사용되는 시간
     *
     * @param time 기타 재료의 사용되는 시간
     */
    public void setTime(Integer time) {
        this.time = time;
    }

    /**
     * 기타 재료의 무게 또는 양
     *
     * @return 기타 재료의 무게 또는 양
     */
    public Integer getAmount() {
        return amount;
    }

    /**
     * 기타 재료의 무게 또는 양
     *
     * @param amount 기타 재료의 무게 또는 양
     */
    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    /**
     * 기타 재료의 무게, 양을 측정 여부
     *
     * @return 기타 재료의 무게, 양을 측정 여부
     */
    public Boolean getAmountIsWeight() {
        return amountIsWeight;
    }

    /**
     * 기타 재료의 무게, 양을 측정 여부
     *
     * @param amountIsWeight 기타 재료의 무게, 양을 측정 여부
     */
    public void setAmountIsWeight(Boolean amountIsWeight) {
        this.amountIsWeight = amountIsWeight;
    }

    /**
     * 기타 재료의 사용 항목에 대한 간단한 설명
     *
     * @return 기타 재료의 사용 항목에 대한 간단한 설명
     */
    public String getUseFor() {
        return useFor;
    }

    /**
     * 기타 재료의 사용 항목에 대한 간단한 설명
     *
     * @param useFor 기타 재료의 사용 항목에 대한 간단한 설명
     */
    public void setUseFor(String useFor) {
        this.useFor = useFor;
    }

    /**
     * 기타 재료의 사용 항목에 대한 한글 설명
     *
     * @param 기타 재료의 사용 항목에 대한 한글 설명
     */
    public String getUseForKorean() {
        return useForKorean;
    }

    /**
     * 기타 재료의 사용 항목에 대한 간단한 설명
     *
     * @param useForKorean 기타 재료의 사용 항목에 대한 간단한 설명
     */
    public void setUseForKorean(String useForKorean) {
        this.useForKorean = useForKorean;
    }

    /**
     * 기타 재료의 사용 항목에 대한 상세한 설명
     *
     * @return 기타 재료의 사용 항목에 대한 상세한 설명
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 기타 재료의 사용 항목에 대한 상세한 설명
     *
     * @param notes 기타 재료의 사용 항목에 대한 상세한 설명
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 작성자 아이디
     *
     * @return 작성자 아이디
     */
    public String getInsertId() {
        return insertId;
    }

    /**
     * 작성자 아이디
     *
     * @param insertId 작성자 아이디
     */
    public void setInsertId(String insertId) {
        this.insertId = insertId;
    }

    /**
     * 작성 날짜
     *
     * @return 작성 날짜
     */
    public Date getInsertDate() {
        return insertDate;
    }

    /**
     * 작성 날짜
     *
     * @param insertDate 작성 날짜
     */
    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    /**
     * 수정자 아이디
     *
     * @return 수정자 아이디
     */
    public String getUpdateId() {
        return updateId;
    }

    /**
     * 수정자 아이디
     *
     * @param updateId 수정자 아이디
     */
    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    /**
     * 수정 날짜
     *
     * @return 수정 날짜
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * 수정 날짜
     *
     * @param updateDate 수정 날짜
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * 삭제자 아이디
     *
     * @return 삭제자 아이디
     */
    public String getDeleteId() {
        return deleteId;
    }

    /**
     * 삭제자 아이디
     *
     * @param deleteId 삭제자 아이디
     */
    public void setDeleteId(String deleteId) {
        this.deleteId = deleteId;
    }

    /**
     * 삭제 날짜
     *
     * @return 삭제 날짜
     */
    public Date getDeleteDate() {
        return deleteDate;
    }

    /**
     * 삭제 날짜
     *
     * @param deleteDate 삭제 날짜
     */
    public void setDeleteDate(Date deleteDate) {
        this.deleteDate = deleteDate;
    }

    /**
     * 저장 성공 여부.
     *
     * @return 저장 성공 여부
     */
    public Boolean getInsertFlag() {
        return insertFlag;
    }

    /**
     * 저장 성공 여부.
     *
     * @param insertFlag 저장 성공 여부
     */
    public void setInsertFlag(Boolean insertFlag) {
        this.insertFlag = insertFlag;
    }

    /**
     * 수정 성공 여부.
     *
     * @return 수정 성공 여부
     */
    public Boolean getUpdateFlag() {
        return updateFlag;
    }

    /**
     * 수정 성공 여부.
     *
     * @param updateFlag 수정 성공 여부
     */
    public void setUpdateFlag(Boolean updateFlag) {
        this.updateFlag = updateFlag;
    }

    /**
     * 삭제 성공 여부.
     *
     * @return 삭제 성공 여부
     */
    public Boolean getDeleteFlag() {
        return deleteFlag;
    }

    /**
     * 삭제 성공 여부.
     *
     * @param deleteFlag 삭제 성공 여부
     */
    public void setDeleteFlag(Boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getSpiceCnt() {
        return spiceCnt;
    }

    public void setSpiceCnt(String spiceCnt) {
        this.spiceCnt = spiceCnt;
    }

    public String getSpiceCntName() {
        return spiceCntName;
    }

    public void setSpiceCntName(String spiceCntName) {
        this.spiceCntName = spiceCntName;
    }

    public String getFlavorCnt() {
        return flavorCnt;
    }

    public void setFlavorCnt(String flavorCnt) {
        this.flavorCnt = flavorCnt;
    }

    public String getFlavorCntName() {
        return flavorCntName;
    }

    public void setFlavorCntName(String flavorCntName) {
        this.flavorCntName = flavorCntName;
    }

    public String getWaterAgentCnt() {
        return waterAgentCnt;
    }

    public void setWaterAgentCnt(String waterAgentCnt) {
        this.waterAgentCnt = waterAgentCnt;
    }

    public String getWaterAgentCntName() {
        return waterAgentCntName;
    }

    public void setWaterAgentCntName(String waterAgentCntName) {
        this.waterAgentCntName = waterAgentCntName;
    }

    public String getFiningCnt() {
        return finingCnt;
    }

    public void setFiningCnt(String finingCnt) {
        this.finingCnt = finingCnt;
    }

    public String getFiningCntName() {
        return finingCntName;
    }

    public void setFiningCntName(String finingCntName) {
        this.finingCntName = finingCntName;
    }

    public String getHerbCnt() {
        return herbCnt;
    }

    public void setHerbCnt(String herbCnt) {
        this.herbCnt = herbCnt;
    }

    public String getHerbCntName() {
        return herbCntName;
    }

    public void setHerbCntName(String herbCntName) {
        this.herbCntName = herbCntName;
    }

    public String getOtherCnt() {
        return otherCnt;
    }

    public void setOtherCnt(String otherCnt) {
        this.otherCnt = otherCnt;
    }

    public String getOtherCntName() {
        return otherCntName;
    }

    public void setOtherCntName(String otherCntName) {
        this.otherCntName = otherCntName;
    }

    public String getTypeKorean() {
        return typeKorean;
    }

    public void setTypeKorean(String typeKorean) {
        this.typeKorean = typeKorean;
    }

    public String getTitleInUrl() {
        return titleInUrl;
    }

    public void setTitleInUrl(String titleInUrl) {

        titleInUrl = titleInUrl.trim().replaceAll("[^a-zA-Z0-9\\-\\s\\.]", "");
        titleInUrl = titleInUrl.replaceAll("[\\-| |\\.]+", "-");

        this.titleInUrl = titleInUrl;
    }

    public String getBrewer() {
        return brewer;
    }

    public void setBrewer(String brewer) {
        this.brewer = brewer;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }
}
