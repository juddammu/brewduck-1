package com.brewduck.web.api.dao;

import com.brewduck.web.domain.Api;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 홉 DAO 구현체.
 * </pre>
 *
 * @author  chacha
 * @version 1.0, 2014.02.16
 */
@Repository("ApiDao")
public class ApiDaoImpl implements ApiDao {
    private static final Logger LOGGER = LoggerFactory.getLogger(ApiDaoImpl.class);


    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public Api checkAccount(Api api) {
        return sqlSessionTemplate.selectOne("Api.checkAccount", api);
    }


}