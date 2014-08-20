package com.brewduck.web.user.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.domain.User;
import com.brewduck.web.recipe.service.RecipeService;
import com.brewduck.web.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * The Class UserController.
 */
@Controller
public class UserController {

	/** The Constant logger. */
	private static final Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Autowired
	private UserService userService;

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private BoardService boardService;

    @RequestMapping(value="/public/recipe/{user_id}/{seq}/*", method=RequestMethod.GET)
    public String selectPublicRecipeDetail(Model model,
                                           @PathVariable("seq") Integer seq,
                                           @PathVariable("user_id") String user_id) {

        Recipe recipe = new Recipe();

        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);
        recipe.setSeq(seq);
        recipe.setBrewer(user_id);
        recipe.setStatus("2");
        Board board = new Board();

        // 맥주 레시피 상세 조회

        Recipe recipeDetail = recipeService.selectPublicRecipeDetail(recipe);
        List<Board> selectNewPostList = boardService.getNewPost(board);

        model.addAttribute("recipeDetail", recipeDetail);
        model.addAttribute("newPostList", selectNewPostList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);

        return "public-recipe/detail";
    }

    @RequestMapping(value="/public/recipe/list/{user_id}/*", method=RequestMethod.GET)
    public String selectPublicRecipeList(Model model,
                                           @PathVariable("user_id") String user_id) {

        Recipe recipe = new Recipe();

        recipe.setBrewer(user_id);
        List<Recipe> recipeList = recipeService.selectRecipeList(recipe);

/*        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);
        recipe.setSeq(seq);
        recipe.setBrewer(user_id);
        Board board = new Board();

        // 맥주 레시피 상세 조회

        Recipe recipeDetail = recipeService.selectPublicRecipeDetail(recipe);
        List<Board> selectNewPostList = boardService.getNewPost(board);

        model.addAttribute("recipeDetail", recipeDetail);
        model.addAttribute("newPostList", selectNewPostList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);*/
        model.addAttribute("recipeList", recipeList);

        return "public-recipe/list";
    }


    @ResponseBody
    @RequestMapping(value = "/public/recipe/replyList/{user_id}/{recipe_id}", method = RequestMethod.GET)
    public List<Board> replyList (Model model, @PathVariable("user_id") Integer user_id, @PathVariable("recipe_id") Integer recipe_id) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();


        Board board = new Board();
        board.setUserId(user_id);
        board.setRecipeId(recipe_id);

        List<Board> replyList  = recipeService.selectReplyList(board);
        model.addAttribute("replyList", replyList);
        return replyList;
    }

    @ResponseBody
    @RequestMapping(value = "/public/recipe/writeReply", method = RequestMethod.POST)
    public Board writeReply(Model model, @RequestBody Board board) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();


        board.setWrterNm(name);
        board.setInsertId(name);
        int insertFlag = recipeService.writeReply(board);

        // 맥주 레시피 저장했는지 성공 세팅
        Board returnBoard = new Board();
        returnBoard.setInsertFlag(insertFlag);

        return returnBoard;
    }


    @ResponseBody
    @RequestMapping(value = "/public/countReply/{user_id}/{recipe_id}", method = RequestMethod.GET)
    public Board countReply(Model model, @PathVariable("user_id") Integer user_id, @PathVariable("recipe_id") Integer recipe_id) {
        Board board = new Board();
        board.setUserId(user_id);
        board.setRecipeId(recipe_id);

        Board countReply = recipeService.countReply(board);

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countReply;
    }
	/**
	 * Gets the all.
	 * 
	 * @param map 
	 * @return the all
	 * @throws Throwable 
	 */
	@RequestMapping(value = "/user/getAll", method = RequestMethod.GET)
	public final void getAll(final ModelMap map,
			final HttpServletRequest request) throws Throwable {
		List<User> users = this.userService.getSelectOne(new User());
		
		map.put("users", users);
	}

    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public String profile(@PathVariable("id") Integer id, Model model) {

        return "account/profile";
    }
}
