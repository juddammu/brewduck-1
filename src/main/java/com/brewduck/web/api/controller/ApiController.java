package com.brewduck.web.api.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.api.service.ApiService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Api;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.service.RecipeService;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;


/**
 * <pre>
 * API Controller.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/api")
public class ApiController {
    private static final Logger logger = LoggerFactory.getLogger(ApiController.class);


    /**
     * ApiService Dependency Injection.
     */
    @Autowired
    private ApiService apiService;

    @Autowired
    private RecipeService recipeService;

    /**
     * <pre>
     * 로그인 API
     * url : /api/account/{email}/{password}
     * </pre>
     *
     * @param email : 계정
     * @param password : 패스워드
     * @return
     * 성공시 : [{"RESULT":0}]
     * 실패시 : [{"RESULT":1}]
     */
    @RequestMapping(value = "/{apiKey}/account/{email}/{password}", method = RequestMethod.GET)
    @ResponseBody
    public Api checkAccount(@PathVariable("apiKey") String apiKey,
                            @PathVariable("email")  String email,
                            @PathVariable("password") String password) {

        int resultCode = -1;
        Api paramApi = new Api();
        Api resultApi = new Api();

        if(email.length() < 1){
            resultCode = 0;
            resultApi.setResultCode(resultCode);
            return resultApi;
        }

        if(password.length() < 1){
            resultCode = 0;
            return resultApi;
        }

        paramApi.setEmail(email);
        paramApi.setPassword(password);
        resultApi = apiService.checkAccount(paramApi);
        resultApi.setPassword("****");
        return resultApi;
    }

    /**
     * <pre>
     * My 레시피리스트
     * url : /api/account/recipe/{email}
     * </pre>
     *
     * @param userId
     * @return
     * 성공시 :
     * [{"idx":1,"title":"호가든클론레시피","content":"풍부한 거품과 ....... 추천레시피"},
     *  {"idx":2,"title":"인디카클론레시피","content":"홉을 적게쓰고도 ....... 레시피"}]
     * 실패시 :
     * []
     */

    @ResponseBody
    @RequestMapping(value = "/account/recipe/{userId}", method = RequestMethod.GET)
    public List<Api>  choseRecipeList(Model model, @PathVariable("userId") String userId) throws IOException {
        logger.info("Choose Recipe List");
        Api api = new Api();
        api.setInsertId(userId);
        List<Api> list = apiService.chooseRecipeList(api);

        return list;
    }

    /**
     * <pre>
     * 레시피 상세
     * url : /api/account/recipe/detail/{seq}
     * </pre>
     *
     * @param string seq
     * @return
     * 성공시 :
     * [{"worktype":"매슁","time":"60","content":"malt 2.5kg으로 단백질퓨지 실행","boiltime":"60"},
     * {"worktype":"매슁","time":"5","content":"매쉬아웃","boiltime":"60"},
     * {"worktype":"호핑","time":"60","content":"심코홉 18g","boiltime":"60"},
     * {"worktype":"호핑","time":"5","content":"심코홉 8g","boiltime":"60"}]
     * 실패시 :
     * []
     */
}

