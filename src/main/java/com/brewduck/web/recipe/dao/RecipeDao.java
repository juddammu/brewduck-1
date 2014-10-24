package com.brewduck.web.recipe.dao;

import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Recipe;

import java.util.List;

/**
 * <pre>
 * 맥주 레시피 DAO 인터페이스.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014-02-20
 */
public interface RecipeDao {

    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 맥주 레시피 목록
     */
    public List<Recipe> selectRecipeList(Recipe recipe);


    public List<Recipe> selectNewPublicRecipeList(Recipe recipe);

    public List<Recipe> selectPublicRecipeMenuList(Recipe recipe);

    public List<Recipe> searchRecipeList(Recipe recipe);




    /**
     * <pre>
     * 맥주 레시피 상세 조회.
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 맥주 레시피
     */
    public Recipe selectRecipeDetail(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 스타일 조회.
     * </pre>
     *
     * @param recipe 맥주 레시피 스타일 조회.
     * @return 맥주 레시피 스타일 조회.
     */
    public Recipe selectCategoryMain(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 스타일 리스트.
     * </pre>
     *
     * @param recipe 맥주 레시피 스타일 리스트.
     * @return 맥주 레시피 스타일 리스트.
     */
    public List<Recipe> selectCategoryList(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 스타일 상세.
     * </pre>
     *
     * @param recipe 맥주 레시피 스타일 상세.
     * @return 맥주 레시피 스타일 상세.
     */
    public Recipe selectCategoryDetail(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 ID 생성
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 맥주 레시피
     */
    public Recipe selectRecipeSeq(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 저장.
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 저장 성공 횟수
     */
    public Integer insertRecipe(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 수정.
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 수정 성공 횟수
     */
    public Integer updateRecipe(Recipe recipe);

    /**
     * <pre>
     * 맥주 레시피 삭제.
     * </pre>
     *
     * @param recipe 맥주 레시피
     * @return 삭제 성공 횟수
     */
    public Integer deleteRecipeFermentable(Recipe recipe);

    public Integer deleteRecipeYeast(Recipe recipe);

    public Integer deleteRecipeHops(Recipe recipe);

    public Integer deleteRecipeMisc(Recipe recipe);

    public Integer deleteRecipe(Recipe recipe);

    public Integer insertRecipeFermentable(Recipe recipe);

    public Integer insertRecipeHop(Recipe recipe);

    public Integer insertRecipeYeast(Recipe recipe);

    public Integer insertRecipeMisc(Recipe recipe);

    public List<Board> selectReplyList(Board board);

    public int writeReply(Board board);

    public Board countReply(Board board);

}
