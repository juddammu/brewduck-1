package com.brewduck.web.community.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/community")
public class CommunityController {

    private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

    @Autowired
    private BoardService boardService;


    /**
     * <pre>
     * 자유게시판 리스트.
     * </pre>
     *
     * @param model Model
     * @return 자유게시판 리스트
     */
    @RequestMapping(value = "/{bbsId}/list", method = RequestMethod.GET)
    public String comunityList(@PathVariable("bbsId") Integer bbsId, Model model, HttpServletRequest request) {

        logger.info("bbsId : " + bbsId);
        Board board = new Board();

        board.setBbsId(bbsId);

        // 맥주 맥아 목록 조회z
        List<Board> list = boardService.selectBoardList(board);
        logger.info("Board List Size : {}", list.size());
        model.addAttribute("list", list);

        return "community/list";
    }

    @RequestMapping(value = "/{bbsId}/write", method = RequestMethod.GET)
    public String writeBoardMain(@PathVariable("bbsId") Integer bbsId, Model model) {

        return "community/write";
    }
}


