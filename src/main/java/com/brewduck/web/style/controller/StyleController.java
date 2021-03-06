package com.brewduck.web.style.controller;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.service.StyleService;
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
@RequestMapping(value = "/style")
public class StyleController {
    private static final Logger logger = LoggerFactory.getLogger(StyleController.class);

    /**
     * StyleService Dependency Injection.
     */
    @Autowired
    private StyleService styleService;


    /**
     * <pre>
     * 맥주 스타일 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 스타일 메인
     */

    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String main(Model model, Style paramStyle) {
        List<Style> list = styleService.selectStyleList(paramStyle);

        model.addAttribute("list_cnt", list.size());
        model.addAttribute("list", list);
        model.addAttribute("paramStyle", paramStyle);
        return "style/index";
    }




    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 스타일 상세.
     */
    @RequestMapping(value = "{id}/*", method = RequestMethod.GET)
    public String detail(@PathVariable("id") Integer id, Model model ) {

        logger.info("Style detail searching.........");

        logger.info("id........." + id);

        Style style = new Style();
        //style.setName(name);
        style.setId(id);

        // 맥주 스타일 상세 조회
        Style styleDetail = styleService.selectStyleDetail(style);
        String examples[] = null;

        if (styleDetail.getExamples() != null) {
            examples = styleDetail.getExamples().split(",");
        }

        //String examples[] = styleDetail.getExamples().split(",");
        //Boolean updateFlag = styleService.updateViewCount(style);


        model.addAttribute("StyleDetail", styleDetail);
        model.addAttribute("examples", examples);
        //model.addAttribute("examples", examples);

        return "style/detail";
    }

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 스타일 목록
     */
    @RequestMapping(value = "/list", method = {RequestMethod.GET, RequestMethod.POST})
    public List<Style> StyleList(Model model, Style paramStyle) {
        logger.info("Style List searching.........");
        Style style = new Style();

        // 맥주 스타일 목록 조회
        List<Style> list = styleService.selectStyleList(paramStyle);

        //logger.info(list.get(0).getTitleInUrl());
        //List<Style> list = null;
        //logger.info("Style List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }
/*
    @ResponseBody
    @RequestMapping(value = "/getStyleList", method = RequestMethod.GET)
    public List<Style> selectStyleList(Model model) {

        Style style = new Style();

        // 맥주 스타일 목록 조회
        List<Style> list = styleService.selectStyleList(style);

        //logger.info(list.get(0).getTitleInUrl());
        //List<Style> list = null;
        //logger.info("Style List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }
    */

    @ResponseBody
    @RequestMapping(value = "/getDetail/{id}", method = RequestMethod.GET)
    public Style getDetail(Model model, @PathVariable("id") Integer id) {

        // 맥주 레시피 저장했는지 성공 세팅
        Style style = new Style();
        //style.setName(name);
        style.setId(id);

        // 맥주 스타일 상세 조회
        Style styleDetail = styleService.selectStyleDetail(style);

        return styleDetail;
    }
}

