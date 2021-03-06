package com.brewduck.web.common.controller;

import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.*;
import com.brewduck.web.fermentable.service.FermentableService;
import com.brewduck.web.hop.service.HopService;
import com.brewduck.web.misc.service.MiscService;
import com.brewduck.web.yeast.service.YeastService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/common")
public class CommonController {

    private static final Logger logger = LoggerFactory.getLogger(CommonController.class);

    @Autowired
    private CommonService commonService;

    @Autowired
    private FermentableService fermentableService;

    @Autowired
    private HopService hopService;

    @Autowired
    private YeastService yeastService;

    @Autowired
    private MiscService miscService;

    @RequestMapping(value = "/popup/fermentables",method = RequestMethod.GET)
    public String popup(Model model, Fermentable paramFermentable) {

        return "common/popup/fermentables-index";
    }


    @RequestMapping(value = "/popup/fermentables/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Fermentable> fermentableData(Model model, Fermentable paramFermentable) {
        // 맥주 맥아 목록 조회
        List<Fermentable> list = fermentableService.selectFermentableList(paramFermentable);
        logger.info("Fermentable List Size : {}", list.size());

        return list;
    }


    @RequestMapping(value = "/popup/hops",method = RequestMethod.GET)
    public String hopPopup(Model model, Hop paramHop) {

        return "common/popup/hops-index";
    }


    @RequestMapping(value = "/popup/hops/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Hop> hopData(Model model, Hop paramHop) {
        // 맥주 맥아 목록 조회
        List<Hop> list = hopService.selectHopList(paramHop);
        logger.info("Fermentable List Size : {}", list.size());

        return list;
    }

    @RequestMapping(value = "/popup/yeasts",method = RequestMethod.GET)
    public String yeastPopup(Model model, Yeast paramYeast) {
        return "common/popup/yeast-index";
    }


    @RequestMapping(value = "/popup/yeasts/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Yeast> yeastData(Model model, Yeast paramYeast) {
        // 맥주 맥아 목록 조회
        List<Yeast> list = yeastService.selectYeastList(paramYeast);
        return list;
    }

    @RequestMapping(value = "/popup/miscs",method = RequestMethod.GET)
    public String miscPopup(Model model, Yeast paramYeast) {
        return "common/popup/miscs-index";
    }


    @RequestMapping(value = "/popup/miscs/list", method = RequestMethod.POST)
    @ResponseBody
    public List<Misc> miscData(Model model, Misc paramMisc) {
        // 맥주 맥아 목록 조회
        List<Misc> list = miscService.selectMiscList(paramMisc);
        return list;
    }

    /**
     * 지역(시,군) 리스트
     *
     * @return
     */
    @RequestMapping(value = "/getMainArea", method = RequestMethod.GET)
    @ResponseBody
    public List getMainArea() {
        List<Common> mainAreaList = commonService.selectMainAreaList();
        return mainAreaList;
    }

    /**
     * 지역(동,읍) 리스트
     *
     * @return
     */
    @RequestMapping(value = "/getSubArea/{subArea}", method = RequestMethod.GET)
    @ResponseBody
    public List getSubArea(@PathVariable("subArea") String subArea) {
        Common common = new Common();
        //   common.setParentCode(subArea);
        List<Common> getSubArea = commonService.selectSubAreaList(common);
        return getSubArea;
    }


    /**
     * 대메뉴 카테고리
     *
     * @return
     */
    @RequestMapping(value = "/getMainCategory", method = RequestMethod.GET)
    @ResponseBody
    public List getMainCategory() {
        List<Common> mainCategoryList = commonService.selectMainCategoryList();
        return mainCategoryList;
    }

    /**
     * 중메뉴 카테고리
     *
     * @return
     */
    @RequestMapping(value = "/getSubCategory/{mainCategory}", method = RequestMethod.GET)
    @ResponseBody
    public List getSubCategory(@PathVariable("mainCategory") String mainCategory) {
        Common common = new Common();
        //  common.setParentCode(mainCategory);
        List<Common> subCategory = commonService.selectSubCategoryList(common);
        return subCategory;
    }


    /**
     * 월 가져오기
     *
     * @return
     */
    @RequestMapping(value = "/getBirthMonth", method = RequestMethod.GET)
    @ResponseBody
    public List getBirthMonth() {
        List<Common> birthMonthList = commonService.selectMonthList();
        return birthMonthList;
    }

    @RequestMapping(value = "/getBirthDate/{birthYear}/{birthMonth}", method = RequestMethod.GET)
    @ResponseBody
    public List getBirthDate(@PathVariable("birthYear") Integer birthYear,
        @PathVariable("birthMonth") Integer birthMonth) {
        List<String> dayMonthList = new ArrayList<String>();

        int birthday = lastDay(birthYear, birthMonth);
        for (int i = 1; i < birthday + 1; i++) {
            dayMonthList.add(i + "");
        }

        return dayMonthList;
    }

    /**
     * 해당년월에 마지막날 구하기
     *
     * @param year
     * @param month
     * @return
     */
    public static int lastDay(int year, int month) {
        int totalDay = totalDay(year);
        int[] months;
        int lastDay = 0;

        if (leapYearTF(year)) {
            //1월부터 12월까지 달의 마지막 날
            months = new int[] {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

            //이전달까지의 날 합구하기
            for (int j = 0; j < month - 1; j++) {
                totalDay += months[j];
            }

        } else {
            months = new int[] {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

            for (int j = 0; j < month - 1; j++) {
                totalDay += months[j];
            }
        }

        int preWeekday = totalDay % 7;

        for (int i = 1; i < months[month - 1] + 1; i++) {
            preWeekday++;
            lastDay = i;
        }

        return lastDay;
    }

    /**
     * 이전년도까지의 날 합구하기
     *
     * @param year
     * @return
     */
    public static boolean leapYearTF(int year) {
        boolean yearTF = false;
        if ((0 == (year % 4) && 0 != (year % 100)) || 0 == year % 400) {
            yearTF = true;
        }
        return yearTF;
    }

    /**
     * 이전년도까지의 날 합구하기
     *
     * @param year
     * @return
     */
    public static int totalDay(int year) {
        int totalDay = (year - 1) * 365 + (year - 1) / 4 - (year - 1) / 100 + (year - 1) / 400;
        return totalDay;
    }
}


