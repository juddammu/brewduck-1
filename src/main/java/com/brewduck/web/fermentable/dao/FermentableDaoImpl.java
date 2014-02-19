package com.brewduck.web.fermentable.dao;

import com.brewduck.web.domain.Fermentable;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 발효 DAO 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.20
 */
@Repository("fermentableDao")
public class FermentableDaoImpl implements FermentableDao {
    private static final Logger logger = LoggerFactory.getLogger(FermentableDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Fermentable> selectFermentableList(Fermentable fermentable) {
        return sqlSession.selectList("Fermentable.selectFermentableList", fermentable);
    }

    @Override
    public Fermentable selectFermentableDetail(Fermentable fermentable) {
        return sqlSession.selectOne("Fermentable.selectFermentableDetail", fermentable);
    }

    @Override
    public Integer insertFermentable(Fermentable fermentable) {
        return sqlSession.update("Fermentable.insertFermentable", fermentable);
    }

    @Override
    public Integer updateFermentable(Fermentable fermentable) {
        return sqlSession.update("Fermentable.updateFermentable", fermentable);
    }

    @Override
    public Integer deleteFermentable(Fermentable fermentable) {
        return sqlSession.update("Fermentable.deleteFermentable", fermentable);
    }
}