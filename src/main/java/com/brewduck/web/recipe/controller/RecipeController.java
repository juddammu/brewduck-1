package com.brewduck.web.recipe.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.*;
import com.brewduck.web.fermentable.service.FermentableService;
import com.brewduck.web.hop.service.HopService;
import com.brewduck.web.misc.service.MiscService;
import com.brewduck.web.recipe.service.RecipeService;
import com.brewduck.web.style.service.StyleService;
import com.brewduck.web.yeast.service.YeastService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.List;

/**
 * <pre>
 * 맥주 레시피 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/recipe")
@PropertySource("classpath:properties/jdbc/jdbc.properties")
public class RecipeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(RecipeController.class);

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private FermentableService fermentableService;

    @Autowired
    private StyleService styleService;

    @Autowired
    private HopService hopService;

    @Autowired
    private YeastService yeastService;

    @Autowired
    private MiscService miscService;

    @Resource
    private Environment environment;

    @RequestMapping(value = "/createtest", method = RequestMethod.GET)
    public String createtest(Model model) {

        LOGGER.info("Recipe List Size : {}", environment.getProperty("jdbc.url"));

      /*  List<Fermentable> fermentableList = fermentableService.selectFermentableGroupList();
        List<Hop> hopList = hopService.selectHopList(new Hop());
        List<Yeast> yeastList = yeastService.selectYeastList(new Yeast());
        List<Misc> miscList = miscService.selectMiscList(new Misc());

        model.addAttribute("fermentableList", fermentableList);
        model.addAttribute("hopList",   hopList);
        model.addAttribute("yeastList", yeastList);
        model.addAttribute("miscList",  miscList);*/

        Account account = AuthenticationUtils.getUser();
        Recipe paramRecipe = new Recipe();
        paramRecipe.setBrewerId(account.getId());

        Integer recipeId = recipeService.selectRecipeSeq(paramRecipe).getId();

        model.addAttribute("recipeId", recipeId);

        return "recipe/createtest";
    }


    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @return 맥주 레시피 목록
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model, ModelAndView modelAndView) {

        LOGGER.info("Recipe List Size : {}", environment.getProperty("jdbc.url"));

        List<Fermentable> fermentableList = fermentableService.selectFermentableGroupList();
        List<Hop> hopList = hopService.selectHopList(new Hop());
        List<Yeast> yeastList = yeastService.selectYeastList(new Yeast());
        List<Misc> miscList = miscService.selectMiscList(new Misc());

        model.addAttribute("fermentableList", fermentableList);
        model.addAttribute("hopList", hopList);
        model.addAttribute("yeastList", yeastList);
        model.addAttribute("miscList", miscList);

        return "recipe/create";
    }

    /**
     * <pre>
     * 맥주 레시피 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 레시피 메인
     */
    @RequestMapping(value = "/main/{seq}", method = RequestMethod.GET)
    public String recipeMain(Model model, Recipe recipe, @PathVariable("id") Integer id) {


        recipe.setStyleId(id);
        Account account = AuthenticationUtils.getUser();
        Recipe recipeMain = recipeService.selectCategoryMain(recipe);
        model.addAttribute("recipeMain", recipeMain);
        model.addAttribute("account", account);

        return "recipe/main";
    }

    /**
     * <pre>
     * 맥주 레시피 메인 리스트
     * </pre>
     *
     * @param model Model
     * @return 맥주 레시피 메인 리스트
     */
    @RequestMapping(value = "/categoryList", method = RequestMethod.GET)
    public List<Recipe> selectRecipeCategoryList(Model model, Recipe recipe) {


        List<Recipe> categoryList = recipeService.selectCategoryList(recipe);
        model.addAttribute("categoryList", categoryList);

        return categoryList;
    }

    @RequestMapping(value = "/detail/{seq}/{titleInUrl}/{brewer}", method = RequestMethod.GET)
    public String abv(Model model, @PathVariable("seq") Integer seq, @PathVariable("titleInUrl") String titleInUrl
        , @PathVariable("brewer") Integer brewer) {

        Recipe recipe = new Recipe();
        recipe.setId(seq);
        recipe.setBrewerId(brewer);
        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

/*

        Recipe recipe = new Recipe();
        Recipe recipeDetail = recipeService.selectCategoryDetail(recipe, seq, brewer);
        model.addAttribute("recipeDetail", recipeDetail);
*/

        return "homebrew/view";
    }


    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 레시피 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Recipe> selectRecipeList(Model model) {
        LOGGER.info("Recipe List");
        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();

        // 맥주 레시피 목록 조회
        recipe.setBrewerId(account.getId());
        List<Recipe> list = recipeService.selectRecipeList(recipe);
        LOGGER.info("Recipe List Size : {}", list.size());

        return list;
    }


    /**
     * <pre>
     * 맥주 레시피 상세 조회.
     * </pre>
     *
     * @param model Model
     * @param id   맥주 레시피 영문명
     * @return 맥주 레시피 상세.
     */
    @RequestMapping(value = "{id}/*", method = RequestMethod.GET)
    public String selectRecipeDetail(Model model, @PathVariable("id") Integer id) {
        LOGGER.info("Recipe Name : {}", id);

        Recipe recipe = new Recipe();
        recipe.setId(id);

        // 맥주 레시피 상세 조회
        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "recipe/detail";
    }


    @ResponseBody
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public Recipe insertRecipe2(Model model, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Insert Recipe : {}", paramRecipe);
        // 맥주 레시피 저장
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        // 맥주 레시피 저장했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setInsertFlag(insertFlag);

        return returnRecipe;
    }

    @RequestMapping(value = "/create2", method = RequestMethod.GET)
    public String create2(Model model, ModelAndView modelAndView) {

        return "recipe/create2";
    }

    @RequestMapping(value = "/insertRecipe", method = RequestMethod.POST)
    public String insertRecipe(@ModelAttribute("recipe") Recipe paramRecipe,
        Model model,
        BindingResult result,
        RedirectAttributes redirectAttributes) {
/*
        if(file.getSize() > 0){
            String fileName = file.getOriginalFilename();
        }
*/

        System.out.println("@@@@@@@@@@@@ " + paramRecipe.getId());
        Account account = AuthenticationUtils.getUser();

        paramRecipe.setVersion(0);
        paramRecipe.setBrewerId(account.getId());
        paramRecipe.setBoilSize(paramRecipe.getBatchSize());
        paramRecipe.setBoilTime(60);
        paramRecipe.setInsertId(account.getId() + "");
        //paramRecipe.setCoverImageFile(file);

        Recipe paramRecipeFermantable = new Recipe();
        Recipe paramRecipeHop = new Recipe();
        Recipe paramRecipeYeast = new Recipe();
        Recipe paramRecipeMisc = new Recipe();
        int fermentableSize = 0;
        int hopSize = 0;
        int yeastSize = 0;
        int miscSize = 0;

        Integer recipeSeq = paramRecipe.getId();
/*

        if (paramRecipe.getRecipeFermantableSeqs() != null) {
            fermentableSize = paramRecipe.getRecipeFermantableSeqs().length;
        }
        if (paramRecipe.getRecipeHopSeqs() != null) {
            hopSize = paramRecipe.getRecipeHopSeqs().length;
        }
        if (paramRecipe.getRecipeYeastSeqs() != null) {
            yeastSize = paramRecipe.getRecipeYeastSeqs().length;
        }
        if (paramRecipe.getRecipeMiscSeqs() != null) {
            miscSize = paramRecipe.getRecipeMiscSeqs().length;
        }



        if (fermentableSize > 0) {
            for (int i = 0; i < fermentableSize; i++) {
                paramRecipeFermantable.setRecipeSeq(recipeSeq);
                paramRecipeFermantable.setRecipeFermantableSeq(paramRecipe.getRecipeFermantableSeqs()[i]);
                paramRecipeFermantable.setRecipeFermantableAmount(paramRecipe.getRecipeFermantableAmounts()[i]);
                paramRecipeFermantable.setRecipeFermantableUse(paramRecipe.getRecipeFermantableUses()[i]);
                paramRecipeFermantable.setRecipeFermantableType("1");
                paramRecipeFermantable.setBrewerId(account.getId());
                paramRecipeFermantable.setInsertId(account.getId() + "");
                recipeService.insertRecipeFermentable(paramRecipeFermantable);
            }
        }


        if (hopSize > 0) {
            for (int i = 0; i < hopSize; i++) {
                paramRecipeHop.setRecipeSeq(recipeSeq);
                paramRecipeHop.setRecipeHopSeq(paramRecipe.getRecipeHopSeqs()[i]);
                paramRecipeHop.setRecipeHopAmount(paramRecipe.getRecipeHopAmounts()[i]);
                paramRecipeHop.setRecipeHopUse(paramRecipe.getRecipeHopUses()[i]);
                paramRecipeHop.setRecipeHopTime(paramRecipe.getRecipeHopTimes()[i]);
                paramRecipeHop.setRecipeHopForm(paramRecipe.getRecipeHopForms()[i]);
                paramRecipeHop.setRecipeHopAlpha(paramRecipe.getRecipeHopAlphas()[i]);
                paramRecipeHop.setBrewerId(account.getId());
                paramRecipeHop.setInsertId(account.getId() + "");
                recipeService.insertRecipeHop(paramRecipeHop);
            }
        }

        if (yeastSize > 0) {
            for (int i = 0; i < yeastSize; i++) {
                paramRecipeYeast.setRecipeSeq(recipeSeq);
                paramRecipeYeast.setRecipeYeastSeq(paramRecipe.getRecipeYeastSeqs()[i]);
                //paramRecipeYeast.setRecipeYeastMinTemperature(paramRecipe.getRecipeYeastMinTemperatures()[i]);
                //paramRecipeYeast.setRecipeYeastMaxTemperature(paramRecipe.getRecipeYeastMaxTemperatures()[i]);
                paramRecipeYeast.setBrewerId(account.getId());
                paramRecipeYeast.setInsertId(account.getId() + "");
                recipeService.insertRecipeYeast(paramRecipeYeast);
            }
        }

        if (miscSize > 0) {
            for (int i = 0; i < miscSize; i++) {
                paramRecipeMisc.setRecipeSeq(recipeSeq);
                paramRecipeMisc.setRecipeMiscSeq(paramRecipe.getRecipeMiscSeqs()[i]);
                paramRecipeMisc.setRecipeMiscAmount(paramRecipe.getRecipeMiscAmounts()[i]);
                paramRecipeMisc.setRecipeMiscTime(paramRecipe.getRecipeMiscTimes()[i]);
                paramRecipeMisc.setRecipeMiscUse(paramRecipe.getRecipeMiscUses()[i]);
                paramRecipeMisc.setBrewerId(account.getId());
                paramRecipeMisc.setInsertId(account.getId() + "");
                recipeService.insertRecipeMisc(paramRecipeMisc);
            }
        }
*/

        paramRecipe.setId(recipeSeq);
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        if (insertFlag == true) {
            return "redirect:/homebrew/" + recipeSeq;
        } else {
            return "redirect:/recipe/create";
        }
    }

    /**
     * <pre>
     * 맥주 레시피 저장.
     * </pre>
     *
     * @param model       Model
     * @param name        맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Recipe insertRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Insert Recipe : {}", paramRecipe);
        // 맥주 레시피 저장
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        // 맥주 레시피 저장했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setInsertFlag(insertFlag);

        return returnRecipe;
    }

    /**
     * <pre>
     * 맥주 레시피 수정.
     * </pre>
     *
     * @param model       Model
     * @param name        맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Recipe updateRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Update Recipe : {}", paramRecipe);

        // 맥주 레시피 수정
        Boolean updateFlag = recipeService.updateRecipe(paramRecipe);

        // 맥주 레시피 수정했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setUpdateFlag(updateFlag);

        return returnRecipe;
    }


    @ResponseBody
    @RequestMapping(value = "/srm/{seq}/{batchSize}", method = RequestMethod.GET)
    public String getSrm(Model model, @PathVariable("id") Integer id, @PathVariable("batchSize") Double batchSize) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setId(id);
        recipe.setBrewerId(account.getId());
        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        //Double batchSize = 0.0;
        Double lovibond = 0.0;
        Double weight = 0.0;
        Double srm = 0.0;
        //batchSize = Double.valueOf(recipeDetail.getBatchSize());
        batchSize = batchSize / 3.78534;
        Double sumSrm = 0.0;
        Double resultSrm = 0.0;

        Double oz = 0.0;
        Double aau = 0.0;

        List Fermentables = recipeDetail.getFermentables();
        //List Hops = recipeDetail.getHops();

        if (Fermentables != null) {
            for (int i = 0; i < Fermentables.size(); i++) {
                srm = 0.0;
                lovibond = 0.0;
                weight = 0.0;
                lovibond = ((Fermentable) (Fermentables.get(i))).getColor();
                weight = ((Fermentable) (Fermentables.get(i))).getAmounts();
                weight = weight * 2.2046;

                srm = 0.3 * weight * lovibond;
                srm = srm / batchSize;

                LOGGER.warn("lovibond = " + lovibond);
                LOGGER.warn("weight = " + weight);
                LOGGER.warn("batchSize = " + batchSize);
                sumSrm = sumSrm + srm;
            }
            sumSrm = sumSrm + 4.7;
            resultSrm = Double.valueOf(Math.round(sumSrm));
        }

        //1 : 28
   /*     if(Hops != null){
            for(int i=0; i<Hops.size();i++){
                oz = 0.0;
                oz = ((Hop)(Hops.get(i))).getAmount();
                oz = oz / 28;
                aau = oz * ((Hop)(Hops.get(i))).getAlpha();
            }
        }*/

        //model.addAttribute("srm", resultSrm);

        return resultSrm + "";
    }
}

