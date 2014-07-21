package com.brewduck.web.facebook.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import org.apache.commons.collections.map.HashedMap;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.net.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import org.springframework.core.env.Environment;

@Controller
@RequestMapping("/facebook")
@PropertySource("classpath:properties/social/application.properties")
public class SocialController {
    private static final Logger logger = LoggerFactory.getLogger(SocialController.class);

    @Resource
    private Environment environment;

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String index(HttpSession session, Model model){
        //facebook info setting
        Facebook facebook = new FacebookTemplate((String)session.getAttribute("ACCESS_TOKEN"));
        FacebookProfile profile = facebook.userOperations().getUserProfile();
        //List<string> friends = facebook.friendOperations().getFriendIds();
        //byte[] profiles = facebook.userOperations().getUserProfileImage();

        String myId = profile.getId();
        String myName = profile.getName();
        String myEmail = profile.getEmail();
        String myGender = profile.getGender();

        logger.info("myId"+myId);
        logger.info("myName"+myName);
        logger.info("myEmail"+myEmail);
        logger.info("myGender"+myGender);

        return "account/index";
    }

    /**
     * freiend Info search
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="/getFriendInfo")
    public String getFriendsInfo(HttpSession session, Model model){
        Facebook facebook = new FacebookTemplate((String)session.getAttribute("ACCESS_TOKEN"));
        List<String> friends = facebook.friendOperations().getFriendIds();
        FacebookProfile profile = facebook.userOperations().getUserProfile();

        String myId = profile.getId();
        String myName = profile.getName();
        String myEmail = profile.getEmail();
        String myGender = profile.getGender();

        logger.info("myId"+myId);
        logger.info("myName"+myName);
        logger.info("myEmail"+myEmail);
        logger.info("myGender"+myGender);

        model.addAttribute("friendsList", friends);
        model.addAttribute("profile", profile);
        return "account/index";
    }
    /**
     * facebookSignin
     * 페이스북 로그인 팝업 호출
     * @param response
     * @param request
     * @param model
     * @return
     * @scope user_about_me:사용자 본인 정보, publish_stream: 기본적인 쓰기권한, read_friendlists: 친구 목록
     * @throws Exception
     */
    @RequestMapping(value="/facebookSignIn" , method = RequestMethod.GET)
    public String facebookSignin(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
        logger.info("{}","facebookSignIn START");

        String callbackUrl = "http://localhost/facebook/facebookAccessToken";
        String oauthUrl = "https://www.facebook.com/dialog/oauth?" +
                "client_id="+ environment.getProperty("facebook.clientId")+"&redirect_uri="+URLEncoder.encode(callbackUrl, "UTF-8")+
                "&scope=user_about_me,publish_stream,read_friendlists,offline_access";

        model.addAttribute("oauthUrl", oauthUrl);
        return "account/facebookSignIn";
    }

    /**
     * facebookAccessToken
     * 페이스북 로그인 결과 리턴
     * @param request
     * @param model
     * @param message
     * @param response
     * @return
     * @throws Exception
     */
    @SuppressWarnings("deprecation")
    @RequestMapping(value="/facebookAccessToken")
    public String getFacebookClientAccessToken(HttpServletRequest request, Model model, @RequestParam(value="message", defaultValue="" , required=false) String message, HttpServletResponse response) throws Exception {
        String code 			= request.getParameter("code");
        String errorReason 		= request.getParameter("error_reason");
        String errorDescription = request.getParameter("error_description");

        if(logger.isInfoEnabled()){
            logger.info("code => " +code);
            logger.info("errorReason code => " + errorReason);
            logger.info("errorDescription => " + errorDescription);
        }

        //facebook accessToken call
        requestAccesToken(request, code);

        return "account/callback";
    }

    /**
     * facebook accessToken request
     * 토큰값 받아옴
     * @param request
     * @param code
     * @throws Exception
     */
    public void requestAccesToken(HttpServletRequest request, String code) throws Exception{
        String accessToken = "";
        String result	   = "";

        String callbackUrl = environment.getProperty("callback.host")+"/facebook/facebookAccessToken";
        String url = "https://graph.facebook.com/oauth/access_token"+
                "?client_id="+environment.getProperty("facebook.clientId")+
                "&client_secret="+environment.getProperty("facebook.clientSecret")+
                "&redirect_uri="+URLEncoder.encode(callbackUrl, "UTF-8")+
                "&code="+code;

        //httpGet 통신
        HttpGet httpGet = new HttpGet(url);
        DefaultHttpClient httpClient = new DefaultHttpClient();
        result = httpClient.execute(httpGet, new BasicResponseHandler());
        accessToken = result.split("&")[0].replaceFirst("access_token=", "");

        //토큰값 세션처리
        setAccessToken(request, accessToken);
    }

    /**
     * setAccessToken
     * 토큰값 세션 저장
     * @param request
     * @param accessToken
     * @throws Exception
     */
    public void setAccessToken(HttpServletRequest request, String accessToken) throws Exception {
        request.getSession().setAttribute("ACCESS_TOKEN", accessToken);
        logger.info("ACCESS_TOKEN => " + request.getSession().getAttribute("ACCESS_TOKEN"));
    }

}