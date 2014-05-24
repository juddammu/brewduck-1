package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;
import java.util.Date;

/**
 * 기타 재료, Value Object
 *
 * 신재근, 2014-02-27
 */
public class Misc implements Serializable {
    private static final long serialVersionUID = 1L;

    // 기타 재료 영문명
    private String name;
    // 기타 재료 한글명
    private String koreanName;
    // 기타 재료 버전
    private Integer version;
    // 기타 재료 종류 ("Spice", "Fining", "Water Agent", "Herb", "Flavor" or "Other")
    private String type;
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
    // 기타 재료 순번
    private String seq;


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
     *
     *
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

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }
}
