package com.brewduck.web.recipe.service;

import com.brewduck.web.domain.*;
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
import static org.junit.Assert.assertNotNull;
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

    @Test
    public void selectRecipeDetailTest() {

        recipe.setId(27);
        recipe.setBrewerId(3);
        Recipe resultRecipe = new Recipe();

        Recipe resultFermentable = new Recipe();

        Recipe newPublicRecipe = recipeDao.selectRecipeDetail(recipe);

        Fermentable paramFermentable = new Fermentable();
        paramFermentable.setId(recipe.getId());
        paramFermentable.setBrewerId(recipe.getBrewerId());

        Hop paramHop = new Hop();
        paramHop.setId(newPublicRecipe.getId());
        paramHop.setBrewerId(newPublicRecipe.getBrewerId());

        Yeast paramYeast = new Yeast();
        paramYeast.setId(newPublicRecipe.getId());
        paramYeast.setBrewerId(newPublicRecipe.getBrewerId());

        Misc paramMisc = new Misc();
        paramMisc.setId(newPublicRecipe.getId());
        paramMisc.setBrewerId(newPublicRecipe.getBrewerId());

        resultRecipe  = recipeDao.selectRecipeDetail(recipe);
        List<Fermentable> selectFermentableListTest = fermentableDao.selectRecipeFermentableList(paramFermentable);
        List<Hop> selectHopListTest = hopDao.selectRecipeHopList(paramHop);
        List<Yeast> selectYeastListTest = yeastDao.selectRecipeYeastList(paramYeast);
        List<Misc> selectMiscListTest = miscDao.selectRecipeMiscList(paramMisc);

        assertNotNull("테스트 대상이 잘 생성되었는지 확인", resultRecipe);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectFermentableListTest);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectHopListTest);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectYeastListTest);
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectMiscListTest);
    }

    @Test
    public void selectRecipeListTest() {

        recipe.setBrewerId(3);
        Recipe resultRecipe = new Recipe();

        List<Recipe> selectRecipeListTest  = recipeDao.selectRecipeList(recipe);

        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectRecipeListTest);
    }

    @Test
    public void selectSingleMaltOgTest() {
        Fermentable fermentable = new Fermentable();
        fermentable.setId(85);

        Double efficiency = 75.0; //수율
        Double batchSize  = 20.0; //배치사이즈

        Double recipeFermantableAmounts = 7.0;


        //공식에 맞게 변환
        efficiency = efficiency / 100.0;
        batchSize = batchSize / 3.78534;
        recipeFermantableAmounts = recipeFermantableAmounts * 2.204623;

        Fermentable returnFermentable = new Fermentable();

        returnFermentable = fermentableDao.selectFermentableDetail(fermentable);

        //assertNotNull("테스트 대상이 잘 생성되었는지 확인", returnFermentable);

        //단일 og 테스트
        double ppg = returnFermentable.getPpg();

        assertThat(true, is(ppg > 0));

        System.out.println("ppg" + ppg);

        double og = (recipeFermantableAmounts * ppg * efficiency) / batchSize;

        System.out.println("recipeFermantableAmounts : " + recipeFermantableAmounts);
        System.out.println("efficiency : " + efficiency);
        System.out.println("batchSize : " + batchSize);
        System.out.println("og : " + og);

        og = (og / 1000) + 1;

        System.out.println("og : " + og);

        og = Math.round(og / .001) * .001;

        System.out.println("og : " + og);

        assertThat(true, is(og == 1.079));

        //http://brewduck.com/fermentable/15/Caraaroma
    }

    @Test
    public void selectDoubleMaltOgTest() {
        Fermentable paramFermentable1 = new Fermentable();
        paramFermentable1.setId(85);

        Fermentable paramFermentable2 = new Fermentable();
        paramFermentable2.setId(15);

        Double efficiency = 75.0; //수율
        Double batchSize  = 20.0; //배치사이즈
        Double recipeFermantableAmounts1 = 7.0; //수량
        Double recipeFermantableAmounts2 = 1.0; //수량

        //공식에 맞게 변환
        efficiency = efficiency / 100.0;
        batchSize = batchSize / 3.78534;
        recipeFermantableAmounts1 = recipeFermantableAmounts1 * 2.204623;
        recipeFermantableAmounts2 = recipeFermantableAmounts2 * 2.204623;
        Double sumRecipeFermantableAmounts = recipeFermantableAmounts1 + recipeFermantableAmounts2 ;

        Fermentable returnFermentable1 = new Fermentable();
        Fermentable returnFermentable2 = new Fermentable();

        returnFermentable1 = fermentableDao.selectFermentableDetail(paramFermentable1);
        returnFermentable2 = fermentableDao.selectFermentableDetail(paramFermentable2);

        //assertNotNull("테스트 대상이 잘 생성되었는지 확인", returnFermentable);

        //단일 og 테스트
        double ppg1 = returnFermentable1.getPpg();
        double ppg2 = returnFermentable2.getPpg();
        double sumPpg = ppg1 + ppg2;

        System.out.println("ppg1 : " + ppg1);
        System.out.println("ppg2 :" + ppg2);

        double og1 = (recipeFermantableAmounts1 * ppg1 * efficiency) / batchSize;
        double og2 = (recipeFermantableAmounts2 * ppg2 * efficiency) / batchSize;
        double resultOg = og1 + og2;

        System.out.println("og1 : " + og1);
        System.out.println("og2 : " + og2);
        System.out.println("resultOg : " + resultOg);

        og1 = (og1 / 1000) + 1;
        og2 = (og2 / 1000) + 1;
        resultOg = (resultOg / 1000) + 1;

        System.out.println("og1 : " + og1);
        System.out.println("og2 : " + og2);
        System.out.println("resultOg : " + resultOg);


        og1 = Math.round(og1 / .001) * .001;
        og2 = Math.round(og2 / .001) * .001;
        resultOg = Math.round(resultOg / .001) * .001;

        System.out.println("og1 : " + og1);
        System.out.println("og2 : " + og2);
        System.out.println("resultOg : " + resultOg);


        assertThat(true, is(og1 == 1.079));

        //http://brewduck.com/fermentable/15/Caraaroma
    }

    @Test
    public void selectDoubleMaltSingleYeastFgTest() {

        Double batchSize  = 20.0; //배치사이즈
        batchSize = batchSize / 3.78534;
        Double recipeFermantableAmounts1 = 7.0; //수량
        Double recipeFermantableAmounts2 = 1.0; //수량

        Fermentable paramFermentable1 = new Fermentable();
        paramFermentable1.setId(85);

        Fermentable paramFermentable2 = new Fermentable();
        paramFermentable2.setId(15);

        Fermentable returnFermentable1 = new Fermentable();
        Fermentable returnFermentable2 = new Fermentable();

        returnFermentable1 = fermentableDao.selectFermentableDetail(paramFermentable1);
        returnFermentable2 = fermentableDao.selectFermentableDetail(paramFermentable2);

        recipeFermantableAmounts1 = recipeFermantableAmounts1 * 2.204623;
        recipeFermantableAmounts2 = recipeFermantableAmounts2 * 2.204623;

        double ppg1 = returnFermentable1.getPpg();
        double ppg2 = returnFermentable2.getPpg();

        System.out.println("batchSize : " + batchSize);
        System.out.println("ppg1 : " + ppg1);
        System.out.println("ppg2 :" + ppg2);
        System.out.println("recipeFermantableAmounts1 :" + recipeFermantableAmounts1);
        System.out.println("recipeFermantableAmounts2 :" + recipeFermantableAmounts2);

        //37 x 6.5 / 6 = 40.1
        ppg1 = ppg1 * recipeFermantableAmounts1 / batchSize;
        ppg2 = ppg2 * recipeFermantableAmounts2 / batchSize;

        System.out.println("ppg1 : " + ppg1);
        System.out.println("ppg2 :" + ppg2);

        double tg = ppg1 + ppg2;

        System.out.println("tg :" + tg);
    }

    @Test
    public void selectSingleYeastAdvTest() {
        Yeast yeast = new Yeast();
        yeast.setId(1);

        Double efficiency = 75.0; //수율
        Double batchSize  = 20.0; //배치사이즈

        Double og = 1.078;
        Double fg = 1.01;

        //(((Original Gravity - Final Gravity) * 1.05) / Final Gravity) / 0.79

        Double adv  = (og - fg) * 131;


        System.out.println("adv : " + adv);

    }

    @Test
    public void selecNewPublicRecipeTest() {

        Recipe recipe = new Recipe();
        recipe.setStatus("2");
        recipe.setLimit(4);
        recipe.setMainDisplayYn("Y");

        List<Recipe> selectRecomendPublicRecipeList = recipeDao.selectNewPublicRecipeList(recipe);

    }

}
