package com.brewduck.web.homebrew.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.FileInfo;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.service.RecipeService;
import com.mortennobel.imagescaling.AdvancedResizeOp;
import com.mortennobel.imagescaling.ResampleOp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
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
@PropertySource("classpath:properties/common/common.properties")
public class HomebrewController {
    private static final Logger logger = LoggerFactory.getLogger(HomebrewController.class);

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private CommonService commonService;


    @Resource
    private Environment environment;

    public static void scale(BufferedImage srcImage,
        String descPath,
        String imageFormat,
        int destWidth,
        int descHeight) {
        try {
            ResampleOp resampleOp = new ResampleOp(destWidth, descHeight);
            resampleOp.setUnsharpenMask(AdvancedResizeOp.UnsharpenMask.Soft);
            BufferedImage rescaledImage = resampleOp.filter(srcImage, null);
            File destFile = new File(descPath);
            ImageIO.write(rescaledImage, imageFormat, destFile);

        } catch (IOException e) {
            System.out.println(e);
        }
    }

    /**
     * <pre>
     * 맥주 발효재료 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("homebrew index");
        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "homebrew/index";
    }


    /**
     * 계정 변경
     *
     * @return
     */
    @RequestMapping(value = "/account-update", method = RequestMethod.GET)
    public String update(Model model) {
        return "homebrew/accountUpdate";
    }

    @RequestMapping(value = "/myrecipes", method = RequestMethod.GET)
    public String abv(Model model) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();

        // 맥주 레시피 목록 조회
        recipe.setBrewerId(account.getId());
        List<Recipe> recipeList = recipeService.selectRecipeList(recipe);

        //model.addAttribute("account", account);
        //model.addAttribute("recipeList", recipeList);

        return "homebrew/myrecipes";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String selectRecipeUpdate(Model model, @PathVariable("id") Integer id) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setId(id);
        recipe.setBrewerId(account.getId());

        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "homebrew/update";
    }

    @RequestMapping(value = "/{id}/**", method = RequestMethod.GET)
    public String abv(Model model, @PathVariable("id") Integer id) {

        logger.info("homebrew view");

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setId(id);
        recipe.setBrewerId(account.getId());



        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "homebrew/view";
    }

    /**
     * <pre>
     * 레시피 출판
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value = "/publish/{seq}", method = RequestMethod.GET)
    public String publish(Model model, @PathVariable("id") Integer id) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setId(id);
        recipe.setBrewerId(account.getId());

        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "homebrew/publish";
    }

    /**
     * <pre>
     * 레시피 출판 저장
     * </pre>
     *
     * @param recipe
     * @return 레시피 출판 저장
     */
    @RequestMapping(value = "/publish/update", method = RequestMethod.POST)
    public String writeBoardMain(@ModelAttribute("paramRecipe") Recipe recipe,
        @RequestParam MultipartFile file,
        @RequestParam MultipartFile coverFile,
        HttpServletRequest request,
        BindingResult result,
        RedirectAttributes redirectAttributes) throws IOException {


        logger.info("upload file path : {}", environment.getProperty("upload.filepath"));



        int fileseq = 0;
        int coverFileseq = 0;

        HttpSession session = request.getSession();

        ParameterBlock pb = new ParameterBlock();

        if (coverFile.getSize() > 0) {
            FileInfo coverFileInfo = new FileInfo();

            String coverFileName = coverFile.getOriginalFilename();   //파일명
            String coverFilemime = coverFile.getContentType();        //마임 타입
            String coverFilePath = "/home/brewduck/upload/";       //파일 path


            coverFileseq = commonService.selectFileSeq();
            coverFileInfo.setFileNo(coverFileseq);

            GregorianCalendar gc = new GregorianCalendar();
            SimpleDateFormat simDate = new SimpleDateFormat("yyyyMMddHHmmss");
            Date nowTime = gc.getTime();
            String[] ArrFileName = null;
            if (coverFileName.indexOf(".") >= 0) {
                ArrFileName = coverFileName.split("\\.");
            }
            String fileName = "";
            fileName = ArrFileName[0] + "_" + simDate.format(nowTime) + "." + ArrFileName[1];

            coverFile.transferTo(new File(coverFilePath + fileName));
            Long coverFileSze = coverFile.getSize();


            coverFileInfo.setSeq(coverFileseq);
            coverFileInfo.setFilename(fileName);
            coverFileInfo.setRealFilename(coverFileName);
            coverFileInfo.setFilesize(coverFile.getSize());
            coverFileInfo.setFileNo(1);
            coverFileInfo.setFilemime(coverFileName);

            int fileInsertCount = commonService.insertNoticeFile(coverFileInfo);

            logger.info("file path " + coverFilePath + coverFileName);

            /*
            Image image = ImageLoader.fromFile(coverFilePath+fileName);
            image.getResizedToWidth(408).writeToJPG(new File(coverFilePath+ArrFileName[0] + "_408x160" +"."+ArrFileName[1]), 1f);
            */

            //썸네일 이미지 생성
            pb.add(coverFilePath + fileName);
            RenderedOp rOp = JAI.create("fileload", pb);

            /*
            메인페이지 : 560x390
            홈브루어 보유 레시피 : 265x160
            메인페이지 메뉴 : 190x140
             */

            this.scale(rOp.getAsBufferedImage(), coverFilePath + ArrFileName[0] + "_408x408" + "." + ArrFileName[1], ArrFileName[1], 408, 408);
            this.scale(rOp.getAsBufferedImage(), coverFilePath + ArrFileName[0] + "_204x204" + "." + ArrFileName[1], ArrFileName[1], 204, 204);

        }

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        recipe.setAtchFileId(fileseq + "");
        recipe.setAtchCoverFileId(coverFileseq + "");
        recipe.setBrewerId(account.getId());

        recipeService.updateRecipe(recipe);
        //TODO : 레시피 상태와 이미지 update 처리

        return "redirect:/homebrew/myrecipes";
    }

    /**
     * <pre>
     * 맥주 레시피 삭제.
     * </pre>
     *
     * @param model Model
     * @param seq   맥주 레시피 영문명
     * @return 맥주 레시피 삭제 여부
     */
    @RequestMapping(value = "/delete/{seq}", method = RequestMethod.GET)
    public String deleteRecipe(Model model, @PathVariable("seq") Integer seq) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setId(seq);
        recipe.setBrewerId(account.getId());
        recipe.setDeleteId(account.getId() + "");

        // 맥주 레시피 삭제
        Boolean deleteFlag = recipeService.deleteRecipe(recipe);

        List<Recipe> recipeList = recipeService.selectRecipeList(recipe);

        model.addAttribute("account", account);
        model.addAttribute("recipeList", recipeList);

        return "homebrew/myrecipes";
    }

}

