package com.brewduck.web.api.dao;

import com.brewduck.web.domain.Api;

import java.util.List;

/**
 * <pre>
 * 맥주 레시피 DAO 인터페이스.
 * </pre>
 *
 * @author hukoru
 * @version 1.0, 2014-02-20
 */
public interface ApiDao {

    //Api.checkAccount
    public Api checkAccount(Api api);

}
