package com.brewduck.web.domain;
import com.google.api.client.util.DateTime;
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
public class Admin{

    private static final long serialVersionUID = 1L;
    //가입자 ID
    private Integer id;
    //가입자 명
    private String name;
    //가입자 이메일
    private String email;
    //가입자 권한
    private String authority;
    //가입자 활성화
    private String activation;
    //가입 일자
    private String insertDate;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(String insertDate) {
        this.insertDate = insertDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public String getActivation() {
        return activation;
    }

    public void setActivation(String activation) {
        this.activation = activation;
    }
}
