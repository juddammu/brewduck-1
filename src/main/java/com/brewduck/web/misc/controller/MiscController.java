package com.brewduck.web.misc.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Misc;
import com.brewduck.web.misc.service.MiscService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/misc")
public class MiscController {
    private static final Logger logger = LoggerFactory.getLogger(MiscController.class);

    /**
     * MiscService Dependency Injection.
     */
    @Autowired
    private MiscService miscService;


    /**
     * <pre>
     * 맥주 기타 재료 맥덕 모드 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 재료 맥덕 모드 메인
     */

    @RequestMapping(value = {"/", ""}, method = {RequestMethod.GET, RequestMethod.POST})
    public String main(Model model, Misc paramMisc) {
        logger.info("Misc index");

/*        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);*/
        List<Misc> list = miscService.selectMiscList(paramMisc);

        model.addAttribute("list_cnt", list.size());
        model.addAttribute("list", list);
        model.addAttribute("paramMisc", paramMisc);

        return "misc/index";
    }

    /**
     * <pre>
     * 맥주 기타 재료 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 재료 메인
     */

    @RequestMapping(value = "/miscIndex", method = RequestMethod.GET)
    public String miscMain(Model model) {
        logger.info("Misc index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "misc/miscIndex";
    }


    /**
     * <pre>
     * 맥주 기타 재료 타입 별 갯수 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 재료 타입 별 갯수.
     */
    @ResponseBody
    @RequestMapping(value = "/countMiscType", method = RequestMethod.GET)
    public Misc countMiscType(Model model) {

        // 맥주 발효재료 국가 별 갯수 조회.
        Misc countMiscType = miscService.countMiscType();

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countMiscType;
    }

    /**
     * <pre>
     * 맥주 기타 재료 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 재료 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Misc> MiscList(Model model, Misc paramMisc) {
        logger.info("Misc List searching.........");
        Misc misc = new Misc();

        // 맥주 기타 재료 목록 조회
        List<Misc> list = miscService.selectMiscList(paramMisc);

        //logger.info(list.get(0).getTitleInUrl());
        //List<Misc> list = null;
        //logger.info("Misc List Size : {}", list.size());
        logger.info("Misc List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/getMiscList", method = RequestMethod.GET)
    public List<Misc> getHopList(Model model) {
        Misc misc = new Misc();
        // 맥주 홉 목록 조회
        List<Misc> list = miscService.selectMiscList(misc);
        model.addAttribute("list", list);
        return list;
    }

    /**
     * <pre>
     * 맥주 기타 재료 맥덕 모드 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 맥덕 모드 재료 상세.
     */
    @RequestMapping(value = "{id}/*", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable("id") Integer id) {

        logger.info("Misc id : {}", id);

        Misc misc = new Misc();
        misc.setId(id);
        //misc.setName(name);
        //misc.setid(id);

        // 맥주 기타 재료 상세 조회
        Misc miscDetail = miscService.selectMiscDetail(misc);

        model.addAttribute("MiscDetail", miscDetail);

        return "misc/detail";
    }

    /**
     * <pre>
     * 맥주 기타 재료 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 기타 재료 상세.
     */
    @RequestMapping(value = "/miscDetail/{id}/*", method = RequestMethod.GET)
    public String miscDetail(Model model, @PathVariable("id") Integer id) {

        logger.info("Misc id : {}", id);

        Misc misc = new Misc();
        misc.setId(id);
        //misc.setName(name);
        //misc.setid(id);

        // 맥주 기타 재료 상세 조회
        Misc miscDetail = miscService.selectMiscDetail(misc);

        model.addAttribute("MiscDetail", miscDetail);

        return "misc/miscDetail";
    }
}

