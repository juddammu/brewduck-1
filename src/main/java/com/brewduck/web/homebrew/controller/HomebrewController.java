package com.brewduck.web.homebrew.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.domain.Hop;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.service.RecipeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * <pre>
 * 맥주 맥아 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/homebrew")
public class HomebrewController {
    private static final Logger logger = LoggerFactory.getLogger(HomebrewController.class);

    @Autowired
    private RecipeService recipeService;
    /**
     * FermentableService Dependency Injection.
     */

    /**
     * <pre>
     * 맥주 발효재료 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value =  {"/", ""}, method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("homebrew index");
        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "homebrew/index";
    }

    @RequestMapping(value = "/myrecipes", method = RequestMethod.GET)
    public String abv(Model model) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();

        // 맥주 레시피 목록 조회
        recipe.setBrewer(account.getId()+"");
        List<Recipe> recipeList = recipeService.selectRecipeList(recipe);

        model.addAttribute("account", account);
        model.addAttribute("recipeList", recipeList);

        return "homebrew/myrecipes";
    }

    @RequestMapping(value = "/{seq}", method = RequestMethod.GET)
    public String abv(Model model, @PathVariable("seq") Integer seq) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setSeq(seq);
        recipe.setBrewer(account.getId() + "");

        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "homebrew/view";
    }

    /**
     * <pre>
     * 맥주 레시피 삭제.
     * </pre>
     *
     * @param model Model
     * @param seq 맥주 레시피 영문명
     * @return 맥주 레시피 삭제 여부
     */
    @RequestMapping(value = "/delete/{seq}", method = RequestMethod.GET)
    public String deleteRecipe(Model model, @PathVariable("seq") Integer seq) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setSeq(seq);
        recipe.setBrewer(account.getId() + "");
        recipe.setDeleteId(account.getId() + "");

        // 맥주 레시피 삭제
        Boolean deleteFlag = recipeService.deleteRecipe(recipe);

        List<Recipe> recipeList = recipeService.selectRecipeList(recipe);

        model.addAttribute("account", account);
        model.addAttribute("recipeList", recipeList);

        return "homebrew/myrecipes";
    }

}

