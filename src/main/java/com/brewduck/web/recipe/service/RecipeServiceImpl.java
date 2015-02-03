package com.brewduck.web.recipe.service;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.*;
import com.brewduck.web.fermentable.dao.FermentableDao;
import com.brewduck.web.hop.dao.HopDao;
import com.brewduck.web.misc.dao.MiscDao;
import com.brewduck.web.recipe.dao.RecipeDao;
import com.brewduck.web.style.dao.StyleDao;
import com.brewduck.web.yeast.dao.YeastDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("recipeService")
public class RecipeServiceImpl implements RecipeService {
    private static final Logger logger = LoggerFactory.getLogger(RecipeServiceImpl.class);

    @Autowired
    private RecipeDao recipeDao;

    @Autowired
    private StyleDao styleDao;

    @Autowired
    private FermentableDao fermentableDao;

    @Autowired
    private HopDao hopDao;

    @Autowired
    private YeastDao yeastDao;

    @Autowired
    private MiscDao miscDao;


    @Override
    public List<Recipe> selectRecipeList(Recipe recipe) {
        return recipeDao.selectRecipeList(recipe);
    }


    @Override
    public List<Recipe> selectPublicRecipeMenuList(Recipe recipe) {
        return recipeDao.selectPublicRecipeMenuList(recipe);
    }

    @Override
    public List<Recipe> selectNewPublicRecipeList(Recipe recipe) {
        return recipeDao.selectNewPublicRecipeList(recipe);
    }

    @Override
    public Recipe selectRecipeSeq(Recipe recipe) {
        return recipeDao.selectRecipeSeq(recipe);
    }

    @Override
    public List<Recipe> searchRecipeList(Recipe recipe) {
        return recipeDao.searchRecipeList(recipe);
    }


    @Override
    public Recipe selectPublicRecipeDetail(Recipe recipe) {
        // 레시피 조회
        Recipe newPublicRecipe = recipeDao.selectRecipeDetail(recipe);

        Integer recipeSeq = newPublicRecipe.getId();
        Integer brewer = newPublicRecipe.getBrewerId();

        // 레시피 제조시 입력한 스타일 맥주 이름
        Style paramStyle = new Style();
        Fermentable paramFermentable = new Fermentable();
        paramFermentable.setId(newPublicRecipe.getId());
        paramFermentable.setBrewerId(newPublicRecipe.getBrewerId());

        Hop paramHop = new Hop();
        paramHop.setSeq(newPublicRecipe.getId());
        paramHop.setBrewerId(newPublicRecipe.getBrewerId());

        Yeast paramYeast = new Yeast();
        paramYeast.setSeq(newPublicRecipe.getId());
        paramYeast.setBrewerId(newPublicRecipe.getBrewerId());

        Misc paramMisc = new Misc();
        paramMisc.setSeq(newPublicRecipe.getId());
        paramMisc.setBrewerId(newPublicRecipe.getBrewerId());

        // 레시피 작성시 선택한 스타일 맥주
        //newRecipe.setStyle(styleDao.selectStyleDetail(paramStyle));
        // 레시피에 포함되는 맥아 리스트
        newPublicRecipe.setFermentables(fermentableDao.selectRecipeFermentableList(paramFermentable));
        // 레시피에 포함되는 홉 리스트
        /*newRecipe.setHops(hopDao.selectRecipeHopList(recipeSeq));*/
        newPublicRecipe.setHops(hopDao.selectRecipeHopList(paramHop));
        // 레시피에 포함되는 이스트 리스트
        /*newRecipe.setYeasts(yeastDao.selectRecipeYeastList(recipeSeq));*/
        newPublicRecipe.setYeasts(yeastDao.selectRecipeYeastList(paramYeast));
        // 레시피에 포함되는 첨가물 리스트
        /*newRecipe.setMiscs(miscDao.selectRecipeMiscList(recipeSeq));*/
        newPublicRecipe.setMiscs(miscDao.selectRecipeMiscList(paramMisc));

        // 조회수 업데이트
        newPublicRecipe.setUpdateId(newPublicRecipe.getBrewerId()+"");
        //recipeDao.updateRecipe(newRecipe);

        return newPublicRecipe;
    }

    @Override
    public Recipe selectRecipeDetail(Recipe recipe) {
        Account account = AuthenticationUtils.getUser();
        // 레시피 조회
        Recipe newRecipe = recipeDao.selectRecipeDetail(recipe);

        Integer recipeSeq = newRecipe.getId();
        Integer brewer = newRecipe.getBrewerId();

        // 레시피 제조시 입력한 스타일 맥주 이름
        Style paramStyle = new Style();
        Fermentable paramFermentable = new Fermentable();
        paramFermentable.setId(newRecipe.getId());
        paramFermentable.setBrewer(account.getId() + "");

        Hop paramHop = new Hop();
        paramHop.setSeq(newRecipe.getId());
        paramHop.setBrewer(account.getId() + "");

        Yeast paramYeast = new Yeast();
        paramYeast.setSeq(newRecipe.getId());
        paramYeast.setBrewerId(account.getId());

        Misc paramMisc = new Misc();
        paramMisc.setSeq(newRecipe.getId());
        paramMisc.setBrewerId(account.getId());

        // 레시피 작성시 선택한 스타일 맥주
        //newRecipe.setStyle(styleDao.selectStyleDetail(paramStyle));
        // 레시피에 포함되는 맥아 리스트
        newRecipe.setFermentables(fermentableDao.selectRecipeFermentableList(paramFermentable));
        // 레시피에 포함되는 홉 리스트
        /*newRecipe.setHops(hopDao.selectRecipeHopList(recipeSeq));*/
        newRecipe.setHops(hopDao.selectRecipeHopList(paramHop));
        // 레시피에 포함되는 이스트 리스트
        /*newRecipe.setYeasts(yeastDao.selectRecipeYeastList(recipeSeq));*/
        newRecipe.setYeasts(yeastDao.selectRecipeYeastList(paramYeast));
        // 레시피에 포함되는 첨가물 리스트
        /*newRecipe.setMiscs(miscDao.selectRecipeMiscList(recipeSeq));*/
        newRecipe.setMiscs(miscDao.selectRecipeMiscList(paramMisc));

        // 조회수 업데이트
        newRecipe.setUpdateId(Integer.toString(account.getId()));
        //recipeDao.updateRecipe(newRecipe);

        return newRecipe;
    }

    @Override
    public Recipe selectCategoryMain(Recipe recipe) {
        return recipeDao.selectCategoryMain(recipe);
    }

    @Override
    public List<Recipe> selectCategoryList(Recipe recipe) {

        return recipeDao.selectCategoryList(recipe);
    }

    @Override
    public Recipe selectCategoryDetail(Recipe recipe, Integer seq, Integer brewer) {


        Account account = AuthenticationUtils.getUser();
        recipe.setId(seq);
        recipe.setBrewerId(brewer);
        // 레시피 조회
        Recipe categoryRecipe = recipeDao.selectCategoryDetail(recipe);

        // 레시피 제조시 입력한 스타일 맥주 이름
        Style paramStyle = new Style();
        Fermentable paramFermentable = new Fermentable();
        paramFermentable.setId(seq);
        paramFermentable.setBrewerId(brewer);

        Hop paramHop = new Hop();
        paramHop.setSeq(seq);
        paramHop.setBrewerId(brewer);

        Yeast paramYeast = new Yeast();
        paramYeast.setSeq(seq);
        paramYeast.setBrewerId(brewer);

        Misc paramMisc = new Misc();
        paramMisc.setSeq(seq);
        paramMisc.setBrewerId(brewer);

        // 레시피에 포함되는 맥아 리스트
        categoryRecipe.setFermentables(fermentableDao.selectRecipeFermentableList(paramFermentable));
        // 레시피에 포함되는 홉 리스트
        categoryRecipe.setHops(hopDao.selectRecipeHopList(paramHop));
        // 레시피에 포함되는 이스트 리스트
        categoryRecipe.setYeasts(yeastDao.selectRecipeYeastList(paramYeast));
        // 레시피에 포함되는 첨가물 리스트
        categoryRecipe.setMiscs(miscDao.selectRecipeMiscList(paramMisc));
        // 조회수 업데이트
        categoryRecipe.setUpdateId(Integer.toString(account.getId()));
        //recipeDao.updateRecipe(newRecipe);

        return categoryRecipe;
    }

    @Transactional
    @Override
    public Boolean insertRecipe(Recipe recipe) {
        int insertCount = recipeDao.insertRecipe(recipe);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateRecipe(Recipe recipe) {
        int updateCount = recipeDao.updateRecipe(recipe);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteRecipe(Recipe recipe) {
        int deleteRecipeCount = recipeDao.deleteRecipe(recipe);
        int deleteRecipeFermentableCount = recipeDao.deleteRecipeFermentable(recipe);
        int deleteRecipeHopsCount = recipeDao.deleteRecipeHops(recipe);
        int deleteRecipeYeastCount = recipeDao.deleteRecipeYeast(recipe);
        int deleteRecipeMiscCount = recipeDao.deleteRecipeMisc(recipe);

        return (deleteRecipeCount + deleteRecipeFermentableCount + deleteRecipeHopsCount + deleteRecipeYeastCount + deleteRecipeMiscCount < 1);
    }


    @Transactional
    @Override
    public int insertRecipeFermentable(Recipe recipe) {
        return recipeDao.insertRecipeFermentable(recipe);
    }

    @Transactional
    @Override
    public int insertRecipeHop(Recipe recipe) {
        return recipeDao.insertRecipeHop(recipe);
    }


    @Transactional
    @Override
    public int insertRecipeYeast(Recipe recipe) {
        return recipeDao.insertRecipeYeast(recipe);
    }


    @Transactional
    @Override
    public int insertRecipeMisc(Recipe recipe) {
        return recipeDao.insertRecipeMisc(recipe);
    }


    @Override
    public List<Board> selectReplyList(Board board) {
        return recipeDao.selectReplyList(board);
    }

    @Override
    public int writeReply(Board board) {
        return recipeDao.writeReply(board);
    }

    @Override
    public Board countReply(Board board) {
        return recipeDao.countReply(board);
    }
}
