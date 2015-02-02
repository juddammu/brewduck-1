package com.brewduck.web.api.service;

import com.brewduck.web.api.dao.ApiDao;
import com.brewduck.web.domain.Api;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("apiService")
public class ApiServiceImpl implements ApiService {
    private static final Logger logger = LoggerFactory.getLogger(ApiServiceImpl.class);

    @Autowired
    private ApiDao apiDao;


    @Override
    public Api checkAccount(Api api) {
        return apiDao.checkAccount(api);
    }

    @Override
    public List<Api> chooseRecipeList(Api api) {
        return apiDao.chooseRecipeList(api);
    }
}
