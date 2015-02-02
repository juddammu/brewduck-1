package com.brewduck.web.calculator.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <pre>
 * 맥주 맥아 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/calc")
public class CalculatorController {
    private static final Logger logger = LoggerFactory.getLogger(CalculatorController.class);

    /**
     * FermentableService Dependency Injection.
     */

    /**
     * <pre>
     * 맥주 발효재료 메인
     * </pre>
     *
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
    public String main() {

        return "calc/index";
    }

    @RequestMapping(value = "/unit-converter", method = RequestMethod.GET)
    public String unitConverter() {

        return "calc/unit-converter";
    }


    @RequestMapping(value = "/abv-calculator", method = RequestMethod.GET)
    public String abv(Model model) {
        logger.info("Fermentable index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/abv-calculator";
    }

    @RequestMapping(value = "/color-converter", method = RequestMethod.GET)
    public String colorConverter(Model model) {
        logger.info("Fermentable index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/color-converter";
    }

    @RequestMapping(value = "/mash-water-calculator", method = RequestMethod.GET)
    public String mashWaterCalculator(Model model) {

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/mash-water-calculator";
    }

    @RequestMapping(value = "/mash-infusion-calculator", method = RequestMethod.GET)
    public String mashInfusionCalculator(Model model) {

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/mash-infusion-calculator";
    }

    @RequestMapping(value = "/malt-potential-extract-calculator", method = RequestMethod.GET)
    public String maltPotentialExtractCalculator(Model model) {

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/malt-potential-extract-calculator";
    }

    @RequestMapping(value = "/hydrometer-temperature-correction", method = RequestMethod.GET)
    public String hydrometerTemperatureCorrection(Model model) {

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/hydrometer-temperature-correction";
    }

    @RequestMapping(value = "/pitch-rate-calculator", method = RequestMethod.GET)
    public String pitchRateCalculator(Model model) {

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/pitch-rate-calculator";
    }


    @ResponseBody
    @RequestMapping(value = "/unitClac/{fromUnit}/{toUnit}/{weight}", method = RequestMethod.GET)
    public Double weightConverter(@PathVariable("fromUnit") String fromUnit, @PathVariable("toUnit") String toUnit, @PathVariable("weight") Double weight) {

        String unitCalculator = null;

     /*   WeightConverter from = new WeightConverter(fromUnit, toUnit);

        from.toOz(weight);

        logger.info("fromUnit : " + fromUnit);
        logger.info("weight : " + weight);*/

        Double returnWeight = 0.0;


        return returnWeight;
    }


}

