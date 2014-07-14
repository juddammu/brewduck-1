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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Autowired
    private HopService hopService;

    @Autowired
    private YeastService yeastService;

    @Autowired
    private MiscService miscService;

    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @return 맥주 레시피 목록
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model, ModelAndView modelAndView) {
        List<Fermentable> fermentableList = fermentableService.selectFermentableGroupList();
        List<Hop> hopList = hopService.selectHopList(new Hop());
        List<Yeast> yeastList = yeastService.selectYeastList(new Yeast());
        List<Misc> miscList = miscService.selectMiscList(new Misc());

        model.addAttribute("fermentableList", fermentableList);
        model.addAttribute("hopList",   hopList);
        model.addAttribute("yeastList", yeastList);
        model.addAttribute("miscList",  miscList);

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
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Recipe> selectRecipeList(Model model) {
        LOGGER.info("Recipe List");
        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();

        // 맥주 레시피 목록 조회
        recipe.setBrewer(account.getId()+"");
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
    public String join(@RequestParam MultipartFile file, @ModelAttribute("recipe") Recipe paramRecipe,
                       Model model,
                       BindingResult result,
                       RedirectAttributes redirectAttributes) {

        if(file.getSize() > 0){
            String fileName = file.getOriginalFilename();
        }

        Account account = AuthenticationUtils.getUser();

        paramRecipe.setVersion(0);
        paramRecipe.setBrewer(account.getId() + "");
        paramRecipe.setBoilSize(19);
        paramRecipe.setBoilTime(60);
        paramRecipe.setInsertId(account.getId() + "");
        paramRecipe.setCoverImageFile(file);

        Recipe paramRecipeFermantable = new Recipe();
        Recipe paramRecipeHop = new Recipe();
        Recipe paramRecipeYeast = new Recipe();
        Recipe paramRecipeMisc = new Recipe();
        int fermentableSize = 0;
        int hopSize = 0;
        int yeastSize = 0;
        int miscSize = 0;

        if(paramRecipe.getRecipeFermantableSeqs() != null){
            fermentableSize = paramRecipe.getRecipeFermantableSeqs().length;
        }
        if(paramRecipe.getRecipeHopSeqs() != null){
            hopSize = paramRecipe.getRecipeHopSeqs().length;
        }
        if(paramRecipe.getRecipeYeastSeqs() != null){
            yeastSize = paramRecipe.getRecipeYeastSeqs().length;
        }
        if(paramRecipe.getRecipeMiscSeqs() != null){
            miscSize = paramRecipe.getRecipeMiscSeqs().length;
        }

        Integer recipeSeq = recipeService.selectRecipeSeq(paramRecipe).getSeq();

        if(fermentableSize > 0){
            for(int i=0; i < fermentableSize; i++ ){
                paramRecipeFermantable.setRecipeSeq(recipeSeq);
                paramRecipeFermantable.setRecipeFermantableSeq(paramRecipe.getRecipeFermantableSeqs()[i]);
                paramRecipeFermantable.setRecipeFermantableAmount(paramRecipe.getRecipeFermantableAmounts()[i]);
                paramRecipeFermantable.setRecipeFermantableUse(paramRecipe.getRecipeFermantableUses()[i]);
                paramRecipeFermantable.setRecipeFermantableType("1");
                paramRecipeFermantable.setInsertId(account.getId() + "");
                recipeService.insertRecipeFermentable(paramRecipeFermantable);
            }
        }


        if(hopSize > 0){
            for(int i=0; i < hopSize; i++ ){
                paramRecipeHop.setRecipeSeq(recipeSeq);
                paramRecipeHop.setRecipeHopSeq(paramRecipe.getRecipeHopSeqs()[i]);
                paramRecipeHop.setRecipeHopAmount(paramRecipe.getRecipeHopAmounts()[i]);
                paramRecipeHop.setRecipeHopUse(paramRecipe.getRecipeHopUses()[i]);
                paramRecipeHop.setRecipeHopTime(paramRecipe.getRecipeHopTimes()[i]);
                paramRecipeHop.setRecipeHopForm(paramRecipe.getRecipeHopForms()[i]);
                paramRecipeHop.setInsertId(account.getId() + "");
                recipeService.insertRecipeHop(paramRecipeHop);
            }
        }

        if(yeastSize > 0){
            for(int i=0; i < yeastSize; i++ ){
                paramRecipeYeast.setRecipeSeq(recipeSeq);
                paramRecipeYeast.setRecipeYeastSeq(paramRecipe.getRecipeYeastSeqs()[i]);
                //paramRecipeYeast.setRecipeYeastMinTemperature(paramRecipe.getRecipeYeastMinTemperatures()[i]);
                //paramRecipeYeast.setRecipeYeastMaxTemperature(paramRecipe.getRecipeYeastMaxTemperatures()[i]);
                paramRecipeYeast.setInsertId(account.getId() + "");
                recipeService.insertRecipeYeast(paramRecipeYeast);
            }
        }

        paramRecipe.setSeq(recipeSeq);
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        if(insertFlag == true){

            Style style = new Style();
            style.setSeq(paramRecipe.getStyleSeq()+"");

            Recipe resultRecipe = recipeService.selectRecipeDetail(paramRecipe);
            Style  resultStyle = styleService.selectStyleDetail(style);

            model.addAttribute("resultRecipe", resultRecipe);
            model.addAttribute("resultStyle" , resultStyle);
            model.addAttribute("paramRecipe" , paramRecipe);

            return "recipe/create";
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

