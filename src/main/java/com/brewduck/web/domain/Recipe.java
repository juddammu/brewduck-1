package com.brewduck.web.domain;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 레시피, Value Object
 *
 * 신재근, 2014-02-27
 */
public class Recipe implements Serializable {

    private static final long serialVersionUID = 1L;

    //커버 이미지
    private MultipartFile coverImageFile;
    // 레시피 순번
    private Integer seq;

    private Integer limit;

    private Integer recipeSeq;
    // 레시피 한글명
    private String name;
    // 레시피 버전
    private Integer version;
    // 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
    private String type;
    // 맥주 스타일 이름
    private String styleName;
    // 맥주 스타일
    private Integer styleSeq;

    private List< Integer > styleSeqs;
    // 맥주 스타일 카테고리
    private Integer styleCategory;
    // 맥주 스타일 명
    private String category;
    // 맥주 스타일 번호
    private Integer categoryNumber;
    // 레시피 양조자
    private String brewer;
    // 레시피 보조 양조자
    private String asstBrewer;
    // 레시피 배치 완성 사이즈
    private Double batchSize;
    // 레시피 워트 보일링시 사이즈
    private Integer boilSize;
    // 레시피 워트 보일링 시간 (분)
    private Integer boilTime;
    // 레시피 수율
    private Integer efficiency;
    // 맥주 맥아(발효) 리스트
    private List<Fermentable> fermentables;
    //레시피 몰트 구성 일련번호
    private Integer recipeFermantableSeq;
    //레시피 몰트 수량
    private Double recipeFermantableAmount;
    //레시피 몰트 사용방법
    private String recipeFermantableUse;
    //발효재료 타입
    private String recipeFermantableType;

    private Integer[] recipeFermantableSeqs;
    //레시피 몰트 수량
    private Double[] recipeFermantableAmounts;
    //레시피 몰트 사용방법
    private String[] recipeFermantableUses;

    private String[] recipeFermantableTypes;

    //맥주 홉
    private List<Hop> hops;
    //홉 일련번호
    private Integer recipeHopSeq;
    //홉 수량
    private Double recipeHopAmount;
    //홉 사용용도
    private String recipeHopUse;
    //홉사용시간
    private Integer recipeHopTime;
    //홉 알파값
    private Double recipeHopAlpha;
    //홉 형태
    private String recipeHopForm;

    private Integer[] recipeHopSeqs;
    //홉 수량
    private Double[] recipeHopAmounts;
    //홉 사용용도
    private String[] recipeHopUses;

    private Double[] recipeHopAlphas;
    //
    private Integer[] recipeHopTimes;
    //홉 형태
    private String[] recipeHopForms;

    // 맥주 효모 리스트
    private List<Yeast> yeasts;

    private Integer recipeYeastSeq;
    // 효모 최소 온도
    private Integer recipeYeastMinTemperature;
    // 효모 최고 온도
    private Integer recipeYeastMaxTemperature;

    private Integer[] recipeYeastSeqs;
    // 효모 최소 온도
    private Integer[] recipeYeastMinTemperatures;
    // 효모 최고 온도
    private Integer[] recipeYeastMaxTemperatures;

    // 맥주 레시피 기타 재료
    private List<Misc> miscs;

    private Integer recipeMiscSeq;

    private Integer recipeMiscTime;

    private Integer recipeMiscAmount;

    private String recipeMiscUse;

    private String[] recipeMiscUses;

    private Integer[] recipeMiscSeqs;

    private Integer[] recipeMiscTimes;

    private Integer[] recipeMiscAmounts;

    // 맥주 매쉬(당화) 리스트
    private List<Mash> mashs;
    // 레시피 메모
    private String notes;
    private String shortNotes;
    // 초기 비중
    private Double og;
    // 최종 비중
    private Double fg;
    // 1차 발효 시간
    private Integer primaryAge;
    // 1차 발효 온도
    private Integer primaryTemp;
    // 2차 발효 시간
    private Integer secondaryAge;
    // 2차 발효 온도
    private Integer secondaryTemp;
    // 병입 발효 시간
    private Integer age;
    // 병입 발효 온도
    private Integer ageTemp;
    // 프라이밍 슈가 명
    private String primingSugarName;
    // 조회수
    private Integer readCount;
    // 레시피 완성도
    private Integer completeness;
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
    //SEO TITLE
    private String titleInUrl;

    //레시피 상태 (1: 비공개, 2: 공개)
    private String status;

    private String  atchFileId;

    private String  atchFileName;

    private String atchCoverFileId;

    private String atchCoverFileName;

    private String brewerNm;

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public String getShortNotes() {
        return shortNotes;
    }

    public void setShortNotes(String shortNotes) {
        this.shortNotes = shortNotes;
    }

    public List<Integer> getStyleSeqs() {
        return styleSeqs;
    }

    public void setStyleSeqs(List<Integer> styleSeqs) {
        this.styleSeqs = styleSeqs;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAtchFileId() {
        return atchFileId;
    }

    public void setAtchFileId(String atchFileId) {
        this.atchFileId = atchFileId;
    }

    public String getAtchFileName() {
        return atchFileName;
    }

    public void setAtchFileName(String atchFileName) {
        this.atchFileName = atchFileName;
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

    public Integer getCompleteness() {
        return completeness;
    }

    public void setCompleteness(Integer completeness) {
        this.completeness = completeness;
    }

    public Double getRecipeHopAlpha() {
        return recipeHopAlpha;
    }

    public void setRecipeHopAlpha(Double recipeHopAlpha) {
        this.recipeHopAlpha = recipeHopAlpha;
    }

    public Double[] getRecipeHopAlphas() {
        return recipeHopAlphas;
    }

    public void setRecipeHopAlphas(Double[] recipeHopAlphas) {
        this.recipeHopAlphas = recipeHopAlphas;
    }

    public String getRecipeMiscUse() {
        return recipeMiscUse;
    }

    public void setRecipeMiscUse(String recipeMiscUse) {
        this.recipeMiscUse = recipeMiscUse;
    }

    public String[] getRecipeMiscUses() {
        return recipeMiscUses;
    }

    public void setRecipeMiscUses(String[] recipeMiscUses) {
        this.recipeMiscUses = recipeMiscUses;
    }

    public Integer getRecipeMiscSeq() {
        return recipeMiscSeq;
    }

    public void setRecipeMiscSeq(Integer recipeMiscSeq) {
        this.recipeMiscSeq = recipeMiscSeq;
    }

    public Integer getRecipeMiscTime() {
        return recipeMiscTime;
    }

    public void setRecipeMiscTime(Integer recipeMiscTime) {
        this.recipeMiscTime = recipeMiscTime;
    }

    public Integer getRecipeMiscAmount() {
        return recipeMiscAmount;
    }

    public void setRecipeMiscAmount(Integer recipeMiscAmount) {
        this.recipeMiscAmount = recipeMiscAmount;
    }

    public Integer[] getRecipeMiscSeqs() {
        return recipeMiscSeqs;
    }

    public void setRecipeMiscSeqs(Integer[] recipeMiscSeqs) {
        this.recipeMiscSeqs = recipeMiscSeqs;
    }

    public Integer[] getRecipeMiscTimes() {
        return recipeMiscTimes;
    }

    public void setRecipeMiscTimes(Integer[] recipeMiscTimes) {
        this.recipeMiscTimes = recipeMiscTimes;
    }

    public Integer[] getRecipeMiscAmounts() {
        return recipeMiscAmounts;
    }

    public void setRecipeMiscAmounts(Integer[] recipeMiscAmounts) {
        this.recipeMiscAmounts = recipeMiscAmounts;
    }

    public Integer[] getRecipeYeastSeqs() {
        return recipeYeastSeqs;
    }

    public void setRecipeYeastSeqs(Integer[] recipeYeastSeqs) {
        this.recipeYeastSeqs = recipeYeastSeqs;
    }



    public Integer getRecipeYeastSeq() {
        return recipeYeastSeq;
    }

    public void setRecipeYeastSeq(Integer recipeYeastSeq) {
        this.recipeYeastSeq = recipeYeastSeq;
    }

    public Integer getRecipeYeastMinTemperature() {
        return recipeYeastMinTemperature;
    }

    public void setRecipeYeastMinTemperature(Integer recipeYeastMinTemperature) {
        this.recipeYeastMinTemperature = recipeYeastMinTemperature;
    }

    public Integer getRecipeYeastMaxTemperature() {
        return recipeYeastMaxTemperature;
    }

    public void setRecipeYeastMaxTemperature(Integer recipeYeastMaxTemperature) {
        this.recipeYeastMaxTemperature = recipeYeastMaxTemperature;
    }

    public Integer[] getRecipeYeastMinTemperatures() {
        return recipeYeastMinTemperatures;
    }

    public void setRecipeYeastMinTemperatures(Integer[] recipeYeastMinTemperatures) {
        this.recipeYeastMinTemperatures = recipeYeastMinTemperatures;
    }

    public Integer[] getRecipeYeastMaxTemperatures() {
        return recipeYeastMaxTemperatures;
    }

    public void setRecipeYeastMaxTemperatures(Integer[] recipeYeastMaxTemperatures) {
        this.recipeYeastMaxTemperatures = recipeYeastMaxTemperatures;
    }

    public Integer getRecipeHopSeq() {
        return recipeHopSeq;
    }

    public void setRecipeHopSeq(Integer recipeHopSeq) {
        this.recipeHopSeq = recipeHopSeq;
    }

    public Double getRecipeHopAmount() {
        return recipeHopAmount;
    }

    public String getRecipeHopUse() {
        return recipeHopUse;
    }

    public void setRecipeHopUse(String recipeHopUse) {
        this.recipeHopUse = recipeHopUse;
    }

    public void setRecipeHopAmount(Double recipeHopAmount) {
        this.recipeHopAmount = recipeHopAmount;
    }

    public Integer getRecipeHopTime() {
        return recipeHopTime;
    }

    public void setRecipeHopAmounts(Double[] recipeHopAmounts) {
        this.recipeHopAmounts = recipeHopAmounts;
    }

    public void setRecipeHopTime(Integer recipeHopTime) {
        this.recipeHopTime = recipeHopTime;
    }

    public String getRecipeHopForm() {
        return recipeHopForm;
    }

    public void setRecipeHopForm(String recipeHopForm) {
        this.recipeHopForm = recipeHopForm;
    }

    public Integer[] getRecipeHopSeqs() {
        return recipeHopSeqs;
    }

    public void setRecipeHopSeqs(Integer[] recipeHopSeqs) {
        this.recipeHopSeqs = recipeHopSeqs;
    }

    public Double[] getRecipeHopAmounts() {
        return recipeHopAmounts;
    }



    public String[] getRecipeHopUses() {
        return recipeHopUses;
    }

    public void setRecipeHopUses(String[] recipeHopUses) {
        this.recipeHopUses = recipeHopUses;
    }

    public Integer[] getRecipeHopTimes() {
        return recipeHopTimes;
    }

    public void setRecipeHopTimes(Integer[] recipeHopTimes) {
        this.recipeHopTimes = recipeHopTimes;
    }

    public String[] getRecipeHopForms() {
        return recipeHopForms;
    }

    public void setRecipeHopForms(String[] recipeHopForms) {
        this.recipeHopForms = recipeHopForms;
    }

    public Integer getRecipeSeq() {
        return recipeSeq;
    }

    public void setRecipeSeq(Integer recipeSeq) {
        this.recipeSeq = recipeSeq;
    }

    public Integer[] getRecipeFermantableSeqs() {
        return recipeFermantableSeqs;
    }

    public void setRecipeFermantableSeqs(Integer[] recipeFermantableSeqs) {
        this.recipeFermantableSeqs = recipeFermantableSeqs;
    }

    public Double[] getRecipeFermantableAmounts() {
        return recipeFermantableAmounts;
    }

    public void setRecipeFermantableAmounts(Double[] recipeFermantableAmounts) {
        this.recipeFermantableAmounts = recipeFermantableAmounts;
    }

    public String[] getRecipeFermantableUses() {
        return recipeFermantableUses;
    }

    public void setRecipeFermantableUses(String[] recipeFermantableUses) {
        this.recipeFermantableUses = recipeFermantableUses;
    }

    public String[] getRecipeFermantableTypes() {
        return recipeFermantableTypes;
    }

    public void setRecipeFermantableTypes(String[] recipeFermantableTypes) {
        this.recipeFermantableTypes = recipeFermantableTypes;
    }

    public Integer getRecipeFermantableSeq() {
        return recipeFermantableSeq;
    }

    public void setRecipeFermantableSeq(Integer recipeFermantableSeq) {
        this.recipeFermantableSeq = recipeFermantableSeq;
    }

    public Double getRecipeFermantableAmount() {
        return recipeFermantableAmount;
    }

    public void setRecipeFermantableAmount(Double recipeFermantableAmount) {
        this.recipeFermantableAmount = recipeFermantableAmount;
    }

    public String getRecipeFermantableUse() {
        return recipeFermantableUse;
    }

    public void setRecipeFermantableUse(String recipeFermantableUse) {
        this.recipeFermantableUse = recipeFermantableUse;
    }

    public String getRecipeFermantableType() {
        return recipeFermantableType;
    }

    public void setRecipeFermantableType(String recipeFermantableType) {
        this.recipeFermantableType = recipeFermantableType;
    }

    public MultipartFile getCoverImageFile() {
        return coverImageFile;
    }

    public void setCoverImageFile(MultipartFile coverImageFile) {
        this.coverImageFile = coverImageFile;
    }



    /**
     * 레시피 순번
     *
     * @return 레시피 순번
     */
    public Integer getSeq() {
        return seq;
    }

    /**
     * 레시피 순번
     *
     * @param seq 레시피 순번
     */
    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    /**
     * 레시피 한글명
     *
     * @return 레시피 한글명
     */
    public String getName() {
        return name;
    }

    /**
     * 레시피 한글명
     *
     * @param name 레시피 한글명
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 레시피 버전
     *
     * @return 레시피 버전
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 레시피 버전
     *
     * @param version 레시피 버전
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
     *
     * @return 레시피 종류
     */
    public String getType() {
        return type;
    }

    /**
     * 레시피 종류 (추출물, 부분 곡물, 완전 곡물)
     *
     * @param type 레시피 종류
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 맥주 스타일 이름
     *
     * @return 맥주 스타일 이름
     */
    public String getStyleName() {
        return styleName;
    }

    /**
     * 맥주 스타일 이름
     *
     * @param styleName 맥주 스타일 이름
     */
    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }

    /**
     * 맥주 스타일
     *
     * @return 맥주 스타일
     */
    public Integer getStyleSeq() {
        return styleSeq;
    }

    public void setStyleSeq(Integer styleSeq) {
        this.styleSeq = styleSeq;
    }

    /**
     * 맥주 스타일 카테고리
     *
     * @return 맥주 스타일 카테고리
     */
    public Integer getStyleCategory() {
        return styleCategory;
    }

    public void setStyleCategory(Integer styleCategory) {
        this.styleCategory = styleCategory;
    }

    /**
     * 맥주 스타일 카테고리 명
     *
     * @return 맥주 스타일 카테고리 명
     */
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * 맥주 스타일 카테고리 번호
     *
     * @return 맥주 스타일 카테고리 번호
     */
    public Integer getCategoryNumber() {
        return categoryNumber;
    }

    public void setCategoryNumber(Integer categoryNumber) {
        this.categoryNumber = categoryNumber;
    }

    /**
     * 레시피 양조자
     *
     * @return 레시피 양조자
     */
    public String getBrewer() {
        return brewer;
    }

    /**
     * 레시피 양조자
     *
     * @param brewer 레시피 양조자
     */
    public void setBrewer(String brewer) {
        this.brewer = brewer;
    }

    /**
     * 레시피 보조 양조자
     *
     * @return 레시피 보조 양조자
     */
    public String getAsstBrewer() {
        return asstBrewer;
    }

    /**
     * 레시피 양조자
     *
     * @param asstBrewer 레시피 보조 양조자
     */
    public void setAsstBrewer(String asstBrewer) {
        this.asstBrewer = asstBrewer;
    }

    /**
     * 레시피 배치 완성 사이즈
     *
     * @return 레시피 배치 완성 사이즈
     */

    public Double getBatchSize() {
        return batchSize;
    }

    /**
     * 레시피 배치 완성 사이즈
     *
     * @param batchSize 레시피 배치 완성 사이즈
     */

    public void setBatchSize(Double batchSize) {
        this.batchSize = batchSize;
    }

    /**
     * 레시피 워트 보일링시 사이즈
     *
     * @return 레시피 워트 보일링시 사이즈
     */
    public Integer getBoilSize() {
        return boilSize;
    }

    /**
     * 레시피 워트 보일링시 사이즈
     *
     * @param boilSize 레시피 워트 보일링시 사이즈
     */
    public void setBoilSize(Integer boilSize) {
        this.boilSize = boilSize;
    }

    /**
     * 레시피 워트 보일링 시간 (분)
     *
     * @return 레시피 워트 보일링 시간
     */
    public Integer getBoilTime() {
        return boilTime;
    }

    /**
     * 레시피 워트 보일링 시간 (분)
     *
     * @param boilTime 레시피 워트 보일링 시간
     */
    public void setBoilTime(Integer boilTime) {
        this.boilTime = boilTime;
    }

    /**
     * 레시피 수율
     *
     * @return 레시피 수율
     */
    public Integer getEfficiency() {
        return efficiency;
    }

    /**
     * 레시피 수율
     *
     * @param efficiency 레시피 수율
     */
    public void setEfficiency(Integer efficiency) {
        this.efficiency = efficiency;
    }

    /**
     * 맥주 홉 리스트
     *
     * @return 맥주 홉 리스트
     */
    public List<Hop> getHops() {
        return hops;
    }

    /**
     * 맥주 홉 리스트
     *
     * @param hops 맥주 홉 리스트
     */
    public void setHops(List<Hop> hops) {
        this.hops = hops;
    }

    /**
     * 맥주 맥아(발효) 리스트
     *
     * @return 맥주 맥아(발효) 리스트
     */
    public List<Fermentable> getFermentables() {
        return fermentables;
    }

    /**
     * 맥주 맥아(발효) 리스트
     *
     * @param fermentables 맥주 맥아(발효) 리스트
     */
    public void setFermentables(List<Fermentable> fermentables) {
        this.fermentables = fermentables;
    }

    /**
     * 맥주 레시피 기타 재료
     *
     * @return 맥주 레시피 기타 재료
     */
    public List<Misc> getMiscs() {
        return miscs;
    }

    /**
     * 맥주 레시피 기타 재료
     *
     * @param miscs 맥주 레시피 기타 재료
     */
    public void setMiscs(List<Misc> miscs) {
        this.miscs = miscs;
    }

    /**
     * 맥주 효모 리스트
     *
     * @return 맥주 효모 리스트
     */
    public List<Yeast> getYeasts() {
        return yeasts;
    }

    /**
     * 맥주 효모 리스트
     *
     * @param yeasts 맥주 효모 리스트
     */
    public void setYeasts(List<Yeast> yeasts) {
        this.yeasts = yeasts;
    }

    /**
     * 맥주 매쉬(당화) 리스트
     *
     * @return 맥주 매쉬(당화) 리스트
     */
    public List<Mash> getMashs() {
        return mashs;
    }

    /**
     * 맥주 매쉬(당화) 리스트
     *
     * @param mashs 맥주 매쉬(당화) 리스트
     */
    public void setMashs(List<Mash> mashs) {
        this.mashs = mashs;
    }

    /**
     * 레시피 메모
     *
     * @return 레시피 메모
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 레시피 메모
     *
     * @param notes 레시피 메모
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }

    /**
     * 초기 비중
     *
     * @return 초기 비중
     */
    public Double getOg() {
        return og;
    }

    /**
     * 초기 비중
     *
     * @param og 초기 비중
     */
    public void setOg(Double og) {
        this.og = og;
    }

    /**
     * 최종 비중
     *
     * @return 최종 비중
     */
    public Double getFg() {
        return fg;
    }

    /**
     * 최종 비중
     *
     * @param fg 최종 비중
     */
    public void setFg(Double fg) {
        this.fg = fg;
    }

    /**
     * 1차 발효 시간
     *
     * @return 1차 발효 시간
     */
    public Integer getPrimaryAge() {
        return primaryAge;
    }

    /**
     * 1차 발효 시간
     *
     * @param primaryAge 1차 발효 시간
     */
    public void setPrimaryAge(Integer primaryAge) {
        this.primaryAge = primaryAge;
    }

    /**
     * 1차 발효 온도
     *
     * @return 1차 발효 온도
     */
    public Integer getPrimaryTemp() {
        return primaryTemp;
    }

    /**
     * 1차 발효 온도
     *
     * @param primaryTemp 1차 발효 온도
     */
    public void setPrimaryTemp(Integer primaryTemp) {
        this.primaryTemp = primaryTemp;
    }

    /**
     * 2차 발효 시간
     *
     * @return 2차 발효 시간
     */
    public Integer getSecondaryAge() {
        return secondaryAge;
    }

    /**
     * 2차 발효 시간
     *
     * @param secondaryAge 2차 발효 시간
     */
    public void setSecondaryAge(Integer secondaryAge) {
        this.secondaryAge = secondaryAge;
    }

    /**
     * 2차 발효 온도
     *
     * @return 2차 발효 온도
     */
    public Integer getSecondaryTemp() {
        return secondaryTemp;
    }

    /**
     * 2차 발효 온도
     *
     * @param secondaryTemp 2차 발효 온도
     */
    public void setSecondaryTemp(Integer secondaryTemp) {
        this.secondaryTemp = secondaryTemp;
    }

    /**
     * 병입 발효 시간
     *
     * @return 병입 발효 시간
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 병입 발효 시간
     *
     * @param age 병입 발효 시간
     */
    public void setAge(Integer age) {
        this.age = age;
    }

    /**
     * 병입 발효 온도
     *
     * @return 병입 발효 온도
     */
    public Integer getAgeTemp() {
        return ageTemp;
    }

    /**
     * 병입 발효 온도
     *
     * @param ageTemp 병입 발효 온도
     */
    public void setAgeTemp(Integer ageTemp) {
        this.ageTemp = ageTemp;
    }

    /**
     * 프라이밍 슈가 명
     *
     * @return 프라이밍 슈가 명
     */
    public String getPrimingSugarName() {
        return primingSugarName;
    }

    /**
     * 프라이밍 슈가 명
     *
     * @param primingSugarName 프라이밍 슈가 명
     */
    public void setPrimingSugarName(String primingSugarName) {
        this.primingSugarName = primingSugarName;
    }

    /**
     * 조회수
     *
     * @return 조회수
     */
    public Integer getReadCount() {
        return readCount;
    }

    /**
     * 조회수
     *
     * @param readCount 조회수
     */
    public void setReadCount(Integer readCount) {
        this.readCount = readCount;
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

    public String getTitleInUrl() {
        return titleInUrl;
    }

    public void setTitleInUrl(String titleInUrl) {

        titleInUrl = titleInUrl.trim().replaceAll("[^a-zA-Z0-9ㄱ-ㅎ가-힣\\-\\s\\.]", "");
        //titleInUrl = titleInUrl.trim().replaceAll("[^a-zA-Z0-9\\-\\s\\.]", "");
        titleInUrl = titleInUrl.replaceAll("[\\-| |\\.]+", "-");

        /*
        if(titleInUrl.length() > 200){
            titleInUrl.setTitleInUrl(titleInUrl.substring(0, 100));
        } else {
            titleInUrl.setTitleInUrl(titleInUrl);
        }
        */

        this.titleInUrl = titleInUrl;
    }

    public String getBrewerNm() {
        return brewerNm;
    }

    public void setBrewerNm(String brewerNm) {
        this.brewerNm = brewerNm;
    }
}
