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

    /**
     * <pre>
     * 자유게시판 메인
     * </pre>
     *
     * @param model Model
     * @return 자유게시판 메인
     */
    @RequestMapping(value = "/freeBoard", method = RequestMethod.GET)
    public String freeBoardMain(Model model) {
        logger.info("freeBoard index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/freeBoard";
    }

    /**
     * <pre>
     * 자유게시판 리스트.
     * </pre>
     *
     * @param model Model
     * @return 자유게시판 리스트
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Board> boardList(Model model, Board paramBoard) {
        logger.info("Board List");
        Board board = new Board();

        // 맥주 맥아 목록 조회z
        List<Board> list = boardService.selectBoardList(paramBoard);
        logger.info("Board List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    @RequestMapping(value = "detail/{nttId}", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable("nttId") Integer nttId) {
        logger.info("Board nttId : {}", nttId);

        Board board = new Board();
        board.setNttId(nttId);

        // 맥주 이스트 상세 조회
        Board boardDetail = boardService.selectBoardDetail(board);

        model.addAttribute("BoardDetail", boardDetail);

        return "board/detail";
    }

    /**
     * <pre>
     * 게시물 작성
     * </pre>
     *
     * @param model Model
     * @return 게시물 작성
     */
    @RequestMapping(value = "/writeBoard", method = RequestMethod.GET)
    public String writeBoardMain(Model model) {
        logger.info("writeBoard index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "board/writeBoard";
    }

    /**
     * <pre>
     * 게시물 수정
     * </pre>
     *
     * @param model Model
     * @return 게시물 작성
     */
    @RequestMapping(value = "/editBoard/{nttId}", method = RequestMethod.GET)
    public String editBoardMain(Model model, @PathVariable("nttId") Integer nttId) {
        logger.info("editBoard index");

        Board board = new Board();
        board.setNttId(nttId);

        // 맥주 이스트 상세 조회
        Board editBoard = boardService.editBoard(board);

        model.addAttribute("EditBoard", editBoard);

        return "board/editBoard";
    }

    @RequestMapping(value = "/insertBoardMaster", method = RequestMethod.POST)
        public String insertBoardMaster(@ModelAttribute("board") Board board,
                BindingResult result,
                RedirectAttributes redirectAttributes) {

        Account account = AuthenticationUtils.getUser();

        String name = account.getName();

        System.out.println(name);
        /*
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
        board.setBbsTyCode("BBST01");
        board.setBbsAttrbCode("BBSA01");
        board.setReplyPosblAt("Y");
        board.setPosblAtchFileNumber(1);
        board.setPosblAtchFileSize(102400);
        board.setTmplatId("TMPLAT_BOARD_DEFAULT");
        board.setUseAt("Y");
        board.setFrstRegisterId(account.getId()+"");

        int insertCount = boardService.insertBoardMaster(board);

        logger.info("insert Board Master");
        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/addBoard";
    }

    @RequestMapping(value = "/writeBoardArticle", method = RequestMethod.POST)
    public String writeBoardArticle(@ModelAttribute("board") Board board,
                                    BindingResult result,
                                    RedirectAttributes redirectAttributes) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setBbsId("3");
        board.setNttNo(1);
        board.setSortOrder(1);
        board.setUseAt("Y");
        board.setAnswerAt("Y");
        board.setInsertId(name);

        int insertCount = boardService.writeBoardArticle(board);

        logger.info("write Board Article");
        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/freeBoard";
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


