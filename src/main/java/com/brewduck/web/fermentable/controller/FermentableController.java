package com.brewduck.web.fermentable.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.fermentable.service.FermentableService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping(value = "/fermentable")
public class FermentableController {
    private static final Logger logger = LoggerFactory.getLogger(FermentableController.class);

    /**
     * FermentableService Dependency Injection.
     */
    @Autowired
    private FermentableService fermentableService;

    /**
     * <pre>
     * 맥주 발효재료 맥덕 모드 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 맥덕 모드 메인
     */
    @RequestMapping(value = "/", method =
        {RequestMethod.GET, RequestMethod.POST})
    public String main(Model model,
        Fermentable paramStyle) {
        List<Fermentable> list = fermentableService.selectFermentableList(paramStyle);

        model.addAttribute("list_cnt", list.size());
        model.addAttribute("list", list);
        model.addAttribute("paramStyle", paramStyle);


        return "fermentable/index";
    }

    /**
     * <pre>
     * 맥주 발효재료 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value = "/fermentIndex", method = RequestMethod.GET)
    public String fermentMain(Model model) {
        logger.info("Fermentable index");
        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "fermentable/fermentIndex";
    }

    /**
     * <pre>
     * 맥주 발효재료 국가 별 갯수 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 국가 별 갯수.
     */
    @ResponseBody
    @RequestMapping(value = "/countFermentableOrigin", method = RequestMethod.GET)
    public Fermentable countFermentableOrigin(Model model) {

        // 맥주 발효재료 국가 별 갯수 조회.
        Fermentable countFermentableOrigin = fermentableService.countFermentableOrigin();

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countFermentableOrigin;
    }

    /**
     * <pre>
     * 발효재료 그룹핑 리스트
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 국가 별 갯수.
     */
    @ResponseBody
    @RequestMapping(value = "/selectFermentableGroupList", method = RequestMethod.GET)
    public List selectFermentableGroupList(Model model) {
        List<Fermentable> list = fermentableService.selectFermentableGroupList();
        return list;
    }




    /**
     * <pre>
     * 맥주 맥아 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 맥아 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Fermentable> FermentableList(Model model, Fermentable paramFermentable) {
        logger.info("Fermentable List");
        Fermentable fermentable = new Fermentable();

        // 맥주 맥아 목록 조회
        List<Fermentable> list = fermentableService.selectFermentableList(paramFermentable);

        model.addAttribute("list", list);

        return list;
    }

    /**
     * <pre>
     * 맥주 발효재료 맥덕 모드 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 맥덕 모드 상세.
     */
    @RequestMapping(value = "{seq}/*", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable("seq") Integer seq) {
        
/*        Fermentable fermentable = new Fermentable();
        fermentable.setName(name);

        // 맥주 맥아 상세 조회
        Fermentable fermentableDetail = fermentableService.selectFermentableDetail(fermentable);

        return fermentableDetail;*/
        logger.info("Fermentable seq : {}", seq);

        Fermentable fermentable = new Fermentable();
        fermentable.setId(seq);

        // 맥주 발효재료 상세 조회
        Fermentable fermentableDetail = fermentableService.selectFermentableDetail(fermentable);

        model.addAttribute("FermentableDetail", fermentableDetail);
        return "fermentable/detail";
    }


    /**
     * <pre>
     * 맥주 발효재료 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효재료 상세.
     */
    @RequestMapping(value = "/fermentDetail/{seq}/*", method = RequestMethod.GET)
    public String fermentDetail(Model model, @PathVariable("seq") Integer seq) {

/*        Fermentable fermentable = new Fermentable();
        fermentable.setName(name);

        // 맥주 맥아 상세 조회
        Fermentable fermentableDetail = fermentableService.selectFermentableDetail(fermentable);

        return fermentableDetail;*/
        logger.info("Fermentable seq : {}", seq);

        Fermentable fermentable = new Fermentable();
        fermentable.setId(seq);

        // 맥주 발효재료 상세 조회
        Fermentable fermentableDetail = fermentableService.selectFermentableDetail(fermentable);

        model.addAttribute("FermentableDetail", fermentableDetail);
        return "fermentable/fermentDetail";
    }

    /**
     * <pre>
     * 맥주 맥아 저장.
     * </pre>
     *
     * @param model            Model
     * @param name             맥주 맥아 영문명
     * @param paramFermentable 맥주 맥아 VO
     * @return 맥주 맥아 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Fermentable insertFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Insert Fermentable : {}", paramFermentable);

        // 맥주 맥아 저장
        Boolean insertFlag = fermentableService.insertFermentable(paramFermentable);

        // 맥주 맥아 저장했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setInsertFlag(insertFlag);

        return returnFermentable;
    }

    /**
     * <pre>
     * 맥주 맥아 수정.
     * </pre>
     *
     * @param model            Model
     * @param name             맥주 맥아 영문명
     * @param paramFermentable 맥주 맥아 VO
     * @return 맥주 맥아 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Fermentable updateFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Update Fermentable : {}", paramFermentable);

        // 맥주 맥아 수정
        Boolean updateFlag = fermentableService.updateFermentable(paramFermentable);

        // 맥주 맥아 수정했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setUpdateFlag(updateFlag);

        return returnFermentable;
    }

    /**
     * <pre>
     * 맥주 맥아 삭제.
     * </pre>
     *
     * @param model            Model
     * @param name             맥주 맥아 영문명
     * @param paramFermentable 맥주 맥아 VO
     * @return 맥주 맥아 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Fermentable deleteFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Delete Fermentable : {}", paramFermentable);

        // 맥주 맥아 삭제
        Boolean deleteFlag = fermentableService.deleteFermentable(paramFermentable);

        // 맥주 맥아 삭제했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setDeleteFlag(deleteFlag);

        return returnFermentable;
    }
}

