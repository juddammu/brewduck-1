package com.brewduck.web.recipe.service;

import com.brewduck.web.domain.Recipe;
import com.brewduck.web.domain.Style;
import com.brewduck.web.fermentable.dao.FermentableDao;
import com.brewduck.web.hop.dao.HopDao;
import com.brewduck.web.misc.dao.MiscDao;
import com.brewduck.web.recipe.dao.RecipeDao;
import com.brewduck.web.style.dao.StyleDao;
import com.brewduck.web.yeast.dao.YeastDao;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;


/**
 * <pre>
 * 계정 서비스 인터페이스.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class RecipeServiceTest {

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


    private Style style;
    private Recipe recipe;
    private int listSize;


    @Before
    public void setUp() {
        style = new Style();
        recipe = new Recipe();
        listSize = 77;
    }

    /**
     * 기본 수행 테스트
     */
    @Test(timeout = 5000)
    public void selectRecipeList() {
        List<Recipe> selectRecipeList = recipeDao.selectRecipeList(recipe);
        assertThat(true, is(selectRecipeList.size() > 0));
    }


    @Test(timeout = 5000)
    public void insertRecipeTest() {

        recipe.setId(0);
        recipe.setStyleId(14);
        recipe.setBrewerId(0);
        recipe.setName("recipe test");
        recipe.setTypeCode("1");
        recipe.setBatchSize(19);
        recipe.setEfficiency(70.0);
        recipe.setNotes("@@@@@@@");

        int insertCount = recipeDao.insertRecipe(recipe);

        assertThat(true, is(insertCount > 0));
    }

    @Test(timeout = 5000)
    public void deleteRecipeTest() {

        recipe.setId(0);
        recipe.setStyleId(14);
        recipe.setBrewerId(0);

        int insertCount = recipeDao.deleteRecipe(recipe);

        assertThat(true, is(insertCount > 0));
    }
}
