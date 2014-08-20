package com.brewduck.web.user.controller;

import com.brewduck.web.common.service.BoardService;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        Board board = new Board();

        // 맥주 레시피 상세 조회

        Recipe recipeDetail = recipeService.selectPublicRecipeDetail(recipe);
        List<Board> selectNewPostList = boardService.getNewPost(board);

        model.addAttribute("recipeDetail", recipeDetail);
        model.addAttribute("newPostList", selectNewPostList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);

        return "public-recipe/detail";
    }

    @RequestMapping(value="/public/recipe-list/{user_id}/*", method=RequestMethod.GET)
    public String selectPublicRecipeList(Model model,
                                           @PathVariable("user_id") String user_id) {

        Recipe recipe = new Recipe();

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

        return "public-recipe/list";
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
