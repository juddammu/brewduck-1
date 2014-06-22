package com.brewduck.web.recipe.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.domain.Style;
import com.brewduck.web.fermentable.service.FermentableService;
import com.brewduck.web.recipe.service.RecipeService;
import com.brewduck.web.style.service.StyleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
public class RecipeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(RecipeController.class);

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private FermentableService fermentableService;

    @Autowired
    private StyleService styleService;

    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @return 맥주 레시피 목록
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        LOGGER.info("Recipe create");
        Fermentable fermentable = new Fermentable();

        List<Fermentable> fermentableList = fermentableService.selectFermentableList(fermentable);
        model.addAttribute("fermentableList", fermentableList);

        return "recipe/create";
    }

    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 레시피 목록
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Recipe> selectRecipeList(Model model) {
        LOGGER.info("Recipe List");
        Recipe recipe = new Recipe();

        // 맥주 레시피 목록 조회
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
     * @param seq 맥주 레시피 영문명
     * @return 맥주 레시피 상세.
     */
    @RequestMapping(value="{seq}/*", method=RequestMethod.GET)
    public String selectRecipeDetail(Model model, @PathVariable("seq") Integer seq) {
        LOGGER.info("Recipe Name : {}", seq);

        Recipe recipe = new Recipe();
        recipe.setSeq(seq);

        // 맥주 레시피 상세 조회
        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "recipe/detail";
    }

    @RequestMapping(value = "/insertRecipe", method = RequestMethod.POST)
    public String join(@ModelAttribute("recipe") Recipe paramRecipe,
                       Model model,
                       BindingResult result,
                       RedirectAttributes redirectAttributes) {

        Account account = AuthenticationUtils.getUser();

        paramRecipe.setVersion(0);
        paramRecipe.setBrewer(account.getId()+"");
        paramRecipe.setBoilSize(19);
        paramRecipe.setBoilTime(60);
        paramRecipe.setInsertId(account.getId()+"");

        paramRecipe.setSeq(recipeService.selectRecipeSeq(paramRecipe).getSeq());
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        LOGGER.info("recipe batch size : " + insertFlag);

        if(insertFlag == true){

            Style style = new Style();
            style.setSeq(paramRecipe.getSeq()+"");

            Recipe resultRecipe = recipeService.selectRecipeDetail(paramRecipe);
            Style  resultStyle = styleService.selectStyleDetail(style);

            model.addAttribute("resultRecipe", resultRecipe);
            model.addAttribute("resultStyle" , resultStyle);

            return "recipe/update";
        }else{
            return "recipe/create";
        }



    }

    /**
     * <pre>
     * 맥주 레시피 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
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
     * @param model Model
     * @param name 맥주 레시피 영문명
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

    /**
     * <pre>
     * 맥주 레시피 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Recipe deleteRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Delete Recipe : {}", paramRecipe);

        // 맥주 레시피 삭제
        Boolean deleteFlag = recipeService.deleteRecipe(paramRecipe);

        // 맥주 레시피 삭제했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setDeleteFlag(deleteFlag);

        return returnRecipe;
    }
}

