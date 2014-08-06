package com.brewduck.web.homebrew.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.*;
import com.brewduck.web.recipe.service.RecipeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    @RequestMapping(value = "/publish/{seq}", method = RequestMethod.GET)
    public String publish(Model model, @PathVariable("seq") Integer seq) {

        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        recipe.setSeq(seq);
        recipe.setBrewer(account.getId() + "");

        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "homebrew/publish";
    }

    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String writeBoardMain(@ModelAttribute("board") Board board,
                                 @RequestParam MultipartFile file,
                                 @RequestParam MultipartFile coverFile,
                                 HttpServletRequest request,
                                 BindingResult result,
                                 RedirectAttributes redirectAttributes) throws IOException {

        int fileseq = 0;
        int coverFileseq = 0;

        HttpSession session = request.getSession();

        if(coverFile.getSize() > 0){
            FileInfo coverFileInfo = new FileInfo();

            String coverFileName = coverFile.getOriginalFilename();   //파일명
            String coverFilemime = coverFile.getContentType();        //마임 타입
            String coverFilePath = session.getServletContext().getRealPath("/")+"/resources/upload/";   //파일 path
            coverFile.transferTo(new File(coverFilePath+coverFileName));
            Long coverFileSze = coverFile.getSize();

            coverFileseq = commonService.selectFileSeq();
            coverFileInfo.setFileNo(coverFileseq);

            GregorianCalendar gc = new GregorianCalendar();
            SimpleDateFormat simDate = new SimpleDateFormat("yyyyMMddHHmmss");
            Date nowTime = gc.getTime();
            String[] ArrFileName = null;

            if( coverFileName.indexOf(".") >= 0 ) {
                ArrFileName = coverFileName.split("\\.");
            }
            coverFileInfo.setSeq(coverFileseq);
            coverFileInfo.setFilename(coverFileName);
            coverFileInfo.setRealFilename(ArrFileName[0] + "_" + simDate.format(nowTime)+"."+ArrFileName[1]);
            coverFileInfo.setFilesize(coverFile.getSize());
            coverFileInfo.setFileNo(1);
            coverFileInfo.setFilemime(coverFileName);

            int fileInsertCount = commonService.insertNoticeFile(coverFileInfo);
        }

        if(file.getSize() > 0){

            FileInfo fileInfo = new FileInfo();

            String fileName = file.getOriginalFilename();   //파일명
            String filemime = file.getContentType();        //마임 타입
            String filePath = session.getServletContext().getRealPath("/")+"/resources/upload/";   //파일 path
            file.transferTo(new File(filePath+fileName));
            Long fileSze = file.getSize();

            fileseq = commonService.selectFileSeq();
            fileInfo.setFileNo(fileseq);

            GregorianCalendar gc = new GregorianCalendar();
            SimpleDateFormat simDate = new SimpleDateFormat("yyyyMMddHHmmss");
            Date nowTime = gc.getTime();
            String[] ArrFileName = null;

            if( fileName.indexOf(".") >= 0 ) {
                ArrFileName = fileName.split("\\.");
            }
            fileInfo.setSeq(fileseq);
            fileInfo.setFilename(fileName);
            fileInfo.setRealFilename(ArrFileName[0] + "_" + simDate.format(nowTime)+"."+ArrFileName[1]);
            fileInfo.setFilesize(file.getSize());
            fileInfo.setFileNo(1);
            fileInfo.setFilemime(filemime);

            int fileInsertCount = commonService.insertNoticeFile(fileInfo);
        }

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setAtchFileId(fileseq+"");
        board.setBbsId(board.getBbsId());
        board.setAtchCoverFileId(coverFileseq+"");
        board.setNttNo(1);
        board.setSortOrder(1);
        board.setUseAt("Y");
        board.setAnswerAt("Y");
        board.setInsertId(name);

        int insertCount = boardService.writeBoardArticle(board);

        logger.info(" @@@ " + board.getBbsNm());

        return "community/write";
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

