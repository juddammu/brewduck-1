package com.brewduck.web.search.controller;

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
@RequestMapping(value = "/search")
public class SearchController {
    private static final Logger LOGGER = LoggerFactory.getLogger(SearchController.class);

    @Autowired
    private RecipeService recipeService;


    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @return 맥주 레시피 목록
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String search(Model model, Board board) {


        return "search/index";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String result(Model model, Recipe recipe) {
        System.out.println("name : "+recipe.getName());

        List<Recipe> recipeList = recipeService.searchRecipeList(recipe);

        model.addAttribute("recipeList", recipeList);

        return "search/index";
    }

}

