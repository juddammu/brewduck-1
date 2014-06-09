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
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    @RequestMapping(value = "/addBoard", method = RequestMethod.GET)
    public String addBoardMain(Model model) {
        logger.info("addBoard index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/addBoard";
    }

    @RequestMapping(value = "/insertBoardMaster", method = RequestMethod.POST)
        public String insertBoardMaster(@ModelAttribute("board") Board board,
                BindingResult result,
                RedirectAttributes redirectAttributes) {

        System.out.println("22222222222222 " );

        /*
        #bbsId#,
        #bbsTyCode#,
        #bbsAttrbCode#,
        #bbsNm#,
        #bbsIntrcn#,
        #replyPosblAt#,
        #fileAtchPosblAt#,
        #posblAtchFileNumber#,
        #posblAtchFileSize#,
        #tmplatId#,
        #useAt#,
      #frstRegisterId#,
      SYSDATE()
         */

        logger.info("insertBoardMaster");

        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/addBoard";
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


