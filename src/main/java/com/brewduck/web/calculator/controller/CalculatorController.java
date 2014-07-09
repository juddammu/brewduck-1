package com.brewduck.web.calculator.controller;

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
     * @param model Model
     * @return 맥주 발효재료 메인
     */
    @RequestMapping(value =  {"/", ""}, method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("calc index");
        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "calc/index";
    }

    @RequestMapping(value = "/abv-calculator", method = RequestMethod.GET)
    public String abv(Model model) {
        logger.info("Fermentable index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "calc/abv-calculator";
    }
}

