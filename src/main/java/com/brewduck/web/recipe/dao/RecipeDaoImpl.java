package com.brewduck.web.recipe.dao;

import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Recipe;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 레시피 DAO 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.20
 */
@Repository("recipeDao")
public class RecipeDaoImpl implements RecipeDao {
    private static final Logger logger = LoggerFactory.getLogger(RecipeDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Recipe> selectRecipeList(Recipe recipe) {
        return sqlSession.selectList("Recipe.selectRecipeList", recipe);
    }

    @Override
    public List<Recipe> selectNewPublicRecipeList(Recipe recipe) {
        return sqlSession.selectList("Recipe.selectNewPublicRecipeList", recipe);
    }

    @Override
    public List<Recipe> selectPublicRecipeMenuList(Recipe recipe) {
        return sqlSession.selectList("Recipe.selectPublicRecipeMenuList", recipe);
    }


    @Override
    public Recipe selectRecipeDetail(Recipe recipe) {
        return sqlSession.selectOne("Recipe.selectRecipeDetail", recipe);
    }

    @Override
    public Recipe selectRecipeSeq(Recipe recipe) {
        return sqlSession.selectOne("Recipe.selectRecipeSeq", recipe);
    }

    @Override
    public Recipe selectCategoryMain(Recipe recipe) {
        return sqlSession.selectOne("Recipe.selectCategoryMain", recipe);
    }

    @Override
    public List<Recipe> selectCategoryList(Recipe recipe) {
        return sqlSession.selectList("Recipe.selectCategoryList", recipe);
    }

    @Override
    public Recipe selectCategoryDetail(Recipe recipe) {
        return sqlSession.selectOne("Recipe.selectCategoryDetail", recipe);
    }

    @Override
    public Integer insertRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.insertRecipe", recipe);
    }

    @Override
    public Integer updateRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.updateRecipe", recipe);
    }

    @Override
    public Integer deleteRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipe", recipe);
    }

    @Override
    public Integer deleteRecipeFermentable(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipeFermentable", recipe);
    }

    @Override
    public Integer deleteRecipeYeast(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipeYeast", recipe);
    }

    @Override
    public Integer deleteRecipeHops(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipeHops", recipe);
    }

    @Override
    public Integer deleteRecipeMisc(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipeMisc", recipe);
    }

    @Override
    public Integer insertRecipeFermentable(Recipe recipe) {
        return sqlSession.insert("Recipe.insertRecipeFermentable", recipe);
    }

    @Override
    public Integer insertRecipeHop(Recipe recipe) {
        return sqlSession.insert("Recipe.insertRecipeHop", recipe);
    }

    @Override
    public Integer insertRecipeYeast(Recipe recipe) {
        return sqlSession.insert("Recipe.insertRecipeYeast", recipe);
    }

    @Override
    public Integer insertRecipeMisc(Recipe recipe) {
        return sqlSession.insert("Recipe.insertRecipeMisc", recipe);
    }

    @Override
    public List<Board> selectReplyList(Board board) {
        return sqlSessionTemplate.selectList("Recipe.selectReplyList", board);
    }

    @Override
    public int writeReply(Board board) {
        return sqlSessionTemplate.insert("Recipe.writeReply", board);
    }

    @Override
    public Board countReply(Board board) {
        return sqlSessionTemplate.selectOne("Recipe.countReply", board);
    }
}