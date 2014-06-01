package com.brewduck.web.common.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Autowired
    private BoardService boardService;

    /**
     * <pre>
     * 자유게시판 메인
     * </pre>
     *
     * @param model Model
     * @return 자유게시판 메인
     */
    @RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
    public String freeMain(Model model) {
        logger.info("Board index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/freeBoard";
    }

    /**
     * <pre>
     * 공지사항 메인
     * </pre>
     *
     * @param model Model
     * @return 공지사항 메인
     */
    @RequestMapping(value = "/noticeBoard", method = RequestMethod.GET)
    public String noticeMain(Model model) {
        logger.info("Board index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/noticeBoard";
    }

    /**
     * <pre>
     * 질문게시판 메인
     * </pre>
     *
     * @param model Model
     * @return 질문게시판 메인
     */
    @RequestMapping(value = "/questionBoard", method = RequestMethod.GET)
    public String questionMain(Model model) {
        logger.info("Board index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/questionBoard";
    }


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Board> BoardList(Model model, Board paramBoard) {
        logger.info("Board List");
        Board board = new Board();

        List<Board> list = boardService.selectBoardList(paramBoard);
        logger.info("Board List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/list/{boardId}", method = RequestMethod.GET)
    public List insertHop(Model model,
                           @PathVariable("boardId") String boardId) {
        // 맥주 홉 저장
        Board board = new Board();
        board.setNttId(1);
        board.setBbsId(boardId);

        List<Board> selectCommentList = boardService.selectCommentList(board);

        return selectCommentList;
    }

}


