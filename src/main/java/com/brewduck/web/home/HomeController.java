package com.brewduck.web.home;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.account.service.AccountService;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Hop;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.hop.service.HopService;
import com.brewduck.web.recipe.service.RecipeService;
import com.brewduck.web.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 * The Class AccountController.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;

    @Autowired
    private HopService hopService;

    @Autowired
    private CommonService commonService;

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private BoardService boardService;

    /**
     * 회원 가입 페이지
     *
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model,
        HttpServletRequest request) {

        Recipe recipe = new Recipe();
        recipe.setStatus("2");
        recipe.setLimit(4);
        recipe.setMainDisplayYn("Y");

        List<Recipe> selectRecomendPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);

        Recipe NewRecipe = new Recipe();
        NewRecipe.setStatus("2");
        NewRecipe.setLimit(4);

        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(NewRecipe);

        model.addAttribute("recomendPublicRecipeList", selectRecomendPublicRecipeList);
        model.addAttribute("newPublicRecipeList", selectNewPublicRecipeList);

        // Account account = AuthenticationUtils.getUser();
        // model.addAttribute("account", account);
        /* 잠시 보류
        Hop hop = hopService.selectRandomHop();




        List<Hop> hopAromaList = hopService.selectHopAromaList(hop);
        model.addAttribute("hop", hop);
        model.addAttribute("hopAromaList", hopAromaList);

        List<Recipe> selectRecomendPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);

        Recipe NewRecipe = new Recipe();
        NewRecipe.setStatus("2");
        NewRecipe.setLimit(4);

        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(NewRecipe);

        System.out.println("한글한글");


        model.addAttribute("hop", hop);
 */
        return "home";
        //return "blank";
    }

    @RequestMapping(value = "/new_home", method = RequestMethod.GET)
    public String sample(Model model,
        HttpServletRequest request) {

        Account account = AuthenticationUtils.getUser();

        Board board = new Board();
        Recipe recipe = new Recipe();

        Hop hop = hopService.selectRandomHop();
        List<Board> list = boardService.getNewPost(board);
        List<Hop> hopAromaList = hopService.selectHopAromaList(hop);

        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);

        List<Integer> lagerMenuList = new ArrayList<Integer>();
        lagerMenuList.add(7);
        lagerMenuList.add(8);
        lagerMenuList.add(9);
        lagerMenuList.add(10);
        lagerMenuList.add(12);
        lagerMenuList.add(14);
        lagerMenuList.add(18);
        lagerMenuList.add(20);
        lagerMenuList.add(21);
        lagerMenuList.add(23);
        lagerMenuList.add(40);
        lagerMenuList.add(41);
        lagerMenuList.add(44);
        lagerMenuList.add(46);
        lagerMenuList.add(48);
        lagerMenuList.add(53);
        lagerMenuList.add(60);
        lagerMenuList.add(65);
        lagerMenuList.add(69);
        lagerMenuList.add(70);
        lagerMenuList.add(71);
        lagerMenuList.add(73);
        lagerMenuList.add(75);
        lagerMenuList.add(76);

        recipe.setStyleSeqs(lagerMenuList);
        List<Recipe> selectPublicLagerRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);

        List<Integer> ipaMenuList = new ArrayList<Integer>();
        ipaMenuList.add(22);
        ipaMenuList.add(24);
        ipaMenuList.add(33);
        ipaMenuList.add(34);
        ipaMenuList.add(35);
        ipaMenuList.add(36);
        ipaMenuList.add(37);
        ipaMenuList.add(62);
        ipaMenuList.add(63);
        ipaMenuList.add(66);
        ipaMenuList.add(68);

        recipe.setStyleSeqs(ipaMenuList);
        List<Recipe> selectPublicIpaRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);

        List<Integer> paleMenuList = new ArrayList<Integer>();
        paleMenuList.add(6);
        paleMenuList.add(19);
        paleMenuList.add(25);
        paleMenuList.add(27);
        paleMenuList.add(28);
        paleMenuList.add(38);
        paleMenuList.add(39);
        paleMenuList.add(42);
        paleMenuList.add(45);
        paleMenuList.add(47);
        paleMenuList.add(50);
        paleMenuList.add(51);
        paleMenuList.add(52);
        paleMenuList.add(54);
        paleMenuList.add(56);
        paleMenuList.add(57);
        paleMenuList.add(59);
        paleMenuList.add(61);
        paleMenuList.add(67);
        recipe.setStyleSeqs(paleMenuList);
        List<Recipe> selectPublicPaleRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);

        List<Integer> wheatMenuList = new ArrayList<Integer>();
        wheatMenuList.add(23);
        wheatMenuList.add(11);
        wheatMenuList.add(16);
        wheatMenuList.add(29);
        wheatMenuList.add(30);
        wheatMenuList.add(67);

        recipe.setStyleSeqs(wheatMenuList);
        List<Recipe> selectPublicWheatRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);

        List<Integer> porterMenuList = new ArrayList<Integer>();
        porterMenuList.add(13);
        porterMenuList.add(15);
        porterMenuList.add(17);
        porterMenuList.add(26);
        porterMenuList.add(31);
        porterMenuList.add(43);
        porterMenuList.add(49);
        porterMenuList.add(64);

        recipe.setStyleSeqs(porterMenuList);
        List<Recipe> selectPublicPorterRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);

        List<Integer> sourMenuList = new ArrayList<Integer>();
        sourMenuList.add(1);

        sourMenuList.add(2);
        sourMenuList.add(3);
        sourMenuList.add(4);
        sourMenuList.add(5);
        sourMenuList.add(32);
        sourMenuList.add(55);
        sourMenuList.add(72);
        sourMenuList.add(74);
        sourMenuList.add(77);

        recipe.setStyleSeqs(sourMenuList);
        List<Recipe> selectPublicSourRecipeMenuList = recipeService.selectPublicRecipeMenuList(recipe);



        model.addAttribute("account", account);
        model.addAttribute("new_post", list);
        model.addAttribute("hop", hop);
        model.addAttribute("hopAromaList", hopAromaList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);
        model.addAttribute("lagerMenuList", selectPublicLagerRecipeMenuList);
        model.addAttribute("ipaMenuList", selectPublicIpaRecipeMenuList);
        model.addAttribute("paleMenuList", selectPublicPaleRecipeMenuList);
        model.addAttribute("wheatMenuList", selectPublicWheatRecipeMenuList);
        model.addAttribute("porterMenuList", selectPublicPorterRecipeMenuList);
        model.addAttribute("sourMenuList", selectPublicSourRecipeMenuList);
        return "new_home";
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String basic(Model model,
        HttpServletRequest request) {


        Hop hop = hopService.selectRandomHop();
        Recipe recipe = new Recipe();
        recipe.setStatus("2");
        recipe.setLimit(4);
        recipe.setMainDisplayYn("Y");


        /* 잠시 보류
        List<Hop> hopAromaList = hopService.selectHopAromaList(hop);
        model.addAttribute("hop", hop);
        model.addAttribute("hopAromaList", hopAromaList);
        */
        List<Recipe> selectRecomendPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);

        Recipe NewRecipe = new Recipe();
        NewRecipe.setStatus("2");
        NewRecipe.setLimit(4);

        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(NewRecipe);


        model.addAttribute("recomendPublicRecipeList", selectRecomendPublicRecipeList);
        model.addAttribute("newPublicRecipeList", selectNewPublicRecipeList);
        model.addAttribute("hop", hop);

        return "main";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Model model,
        HttpServletRequest request) {

        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "test";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String write(Model model,
        HttpServletRequest request) {

        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "write";
    }

    @RequestMapping(value = "/common/list", method = RequestMethod.GET)
    public List<Board> getNewPost(Model model, Board paramBoard) {
        logger.info("New Post List");
        Board board = new Board();
        List<Board> list = boardService.getNewPost(board);
        logger.info("New Post List Size:", list.size());
        model.addAttribute("list", list);


        return list;
    }
}
