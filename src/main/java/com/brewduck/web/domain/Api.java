package com.brewduck.web.domain;

import java.util.Date;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: hukoru
 * Date: 13. 8. 26
 * Time: 오후 11:53
 * To change this template use File | Settings | File Templates.
 */
public class Api {

    private static final long serialVersionUID = 1L;

    //연동 결과 코드
    private Integer resultCode;
    //이메일
    private String email;
    //패스워드
    private String password;

    private Map<String, Object> apis;
    //레시피 순번
    private Integer seq;
    //레시피 한글명
    private String name;
    //레시피 작성자
    private String insertId;
    //레시피 작성일
    private Date insertDate;
    //레시피 작성자 명
    private String userId;

    private String title;

    private String content;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getResultCode() {
        return resultCode;
    }

    public void setResultCode(Integer resultCode) {
        this.resultCode = resultCode;
    }

    public Map<String, Object> getApis() {
        return apis;
    }

    public void setApis(Map<String, Object> apis) {
        this.apis = apis;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
