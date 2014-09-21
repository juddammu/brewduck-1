package com.brewduck.web.common.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.service.RecipeService;
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
@RequestMapping(value = "/board")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Autowired
    private BoardService boardService;

    @Autowired
    private RecipeService recipeService;

    @RequestMapping(value = "/off-flavor", method = RequestMethod.GET)
    public String offFlavor(Model model, HttpServletRequest request) {

        return "board/off-flavor";
    }

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
     * 게시판 메인
     * </pre>
     *
     * @param model Model
     * @return 게시판 메인
     */
    @RequestMapping(value = "/main/{bbsId}", method = RequestMethod.GET)
    public String freeBoardMain(Model model, Board board, @PathVariable("bbsId") Integer bbsId) {
        logger.info("Free Board Main");

        Recipe recipe = new Recipe();
        board.setBbsId(bbsId);
        recipe.setStatus("2");
        recipe.setLimit(4);
        Account account = AuthenticationUtils.getUser();

        Board boardList = boardService.selectBoardName(board);
        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);
        List<Board> selectNewPostList = boardService.getNewPost(board);

        model.addAttribute("boardList", boardList);
        model.addAttribute("newPostList", selectNewPostList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);
        model.addAttribute("account", account);

        return "board/main";
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
    public List<Board> boardList(Model model, Board board) {
        logger.info("Free Board List");

        List<Board> list = boardService.selectBoardList(board);
        logger.info("Free Board List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    /**
     * <pre>
     * 댓글 리스트.
     * </pre>
     *
     * @return 댓글 리스트
     */
    @ResponseBody
    @RequestMapping(value = "/replyList/{nttId}/{bbsId}", method = RequestMethod.GET)
    public List<Board> replyList (Model model, @PathVariable("nttId") Integer nttId, @PathVariable("bbsId") Integer bbsId) {

            Account account = AuthenticationUtils.getUser();
            String name = account.getName();
            Board board = new Board();
            board.setBbsId(bbsId);
            board.setNttId(nttId);
            List<Board> replyList  = boardService.selectReplyList(board);

            logger.info("Reply List Size : {}", replyList.size());
            model.addAttribute("replyList", replyList);
            return replyList;
    }


    /**
     * <pre>
     * 댓글 작성.
     * </pre>
     */
    @ResponseBody
    @RequestMapping(value = "/writeReply", method = RequestMethod.POST)
    public Board writeReply (Model model, @RequestBody Board board) {

            Account account = AuthenticationUtils.getUser();
            String name = account.getName();
            board.setInsertId(name);
            board.setWrterNm(name);
            board.setWrterId(name);
            board.setUseAt("Y");
            int writeReply =  boardService.writeReply(board);
            logger.info("Write Reply");
            logger.info(" @@@ " + board.getAnswer());
            Board returnBoard = new Board();
            returnBoard.setInsertFlag(writeReply);

        return returnBoard;
    }

    /**
     * <pre>
     * 댓글 삭제.
     * </pre>
     *
     * @param model Model
     * @return 댓글 삭제
     */

    @RequestMapping(value = "/deleteReply", method = {RequestMethod.GET, RequestMethod.POST})
    public void deleteReply (Model model, Board board) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setWrterId(name);
        board.setWrterNm(name);
        board.setUseAt("Y");
        board.setInsertId(name);
        int writeReply =  boardService.deleteReply(board);

        logger.info("Write Reply");
        logger.info(" @@@ " + board.getAnswer());
    }

    /**
     * <pre>
     * 게시물 상세.
     * </pre>
     *
     * @param model Model
     * @return 게시물 상세
     */
    @RequestMapping(value = "detail/{nttId}", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable("nttId") Integer nttId) {
        logger.info("Board nttId : {}", nttId);

        Board board = new Board();
        Recipe recipe = new Recipe();
        Account account = AuthenticationUtils.getUser();
        String loginId = account.getName();
        recipe.setStatus("2");
        recipe.setLimit(4);
        board.setUpdateId(loginId);
        board.setNttId(nttId);

        Board boardDetail = boardService.selectBoardDetail(board);
        List<Recipe> selectNewPublicRecipeList = recipeService.selectNewPublicRecipeList(recipe);
        List<Board> selectNewPostList = boardService.getNewPost(board);
        String insertId = boardDetail.getInsertId();

        if( ! insertId.equals(loginId))
        {
            int hitCount = boardService.updateHitCount(board);
            logger.info("Board Hit {}: ", hitCount);
            logger.info("Insert ID {}: ", insertId);
            logger.info("login ID {}: ", loginId);
        }

        String regiID = boardDetail.getInsertId();

        model.addAttribute("loginId",loginId);
        model.addAttribute("regiId",regiID);
        model.addAttribute("newPostList", selectNewPostList);
        model.addAttribute("newRecipeList", selectNewPublicRecipeList);
        model.addAttribute("account", account);
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
        Board board = new Board();
        model.addAttribute("account", account);

        return "board/writeBoard";
    }

    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String writeBoardIndex(HttpServletRequest request, Model model,Board board) {
        logger.info("write board!!!!!!!!!!!!!!!!!!");
        Integer bbsId = Integer.parseInt(request.getParameter("bbsId"));
        board.setBbsId(bbsId);
        Board writeBoard = boardService.selectBoardName(board);
        model.addAttribute("writeBoard", writeBoard);

        return "board/write";
    }

    @RequestMapping(value = "/writeArticle", method = RequestMethod.POST)
    public String writeBoardMain(@ModelAttribute("board") Board board,
                                 BindingResult result,
                                 RedirectAttributes redirectAttributes) {

        logger.info("Write getBbsId  "+ board.getBbsId());

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();
        Integer bbsId = board.getBbsId();
        board.setBbsId(bbsId);
        board.setNttNo(1);
        board.setSortOrder(1);
        board.setUseAt("Y");
        board.setAnswerAt("Y");
        board.setInsertId(name);

        int insertCount = boardService.writeBoardArticle(board);


        logger.info(" @@@ " + board.getBbsNm());

        /*
            #{bbsType},
			#{nttNo},
			#{nttSj},
			#{nttCn},
			#{sortOrder},
            #{useAt},
			#{answerAt},
			#{atchFileId},
			#{insertId},
         */

        return "redirect:/board/main/"+bbsId;
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

    /**
     * <pre>
     * 게시판 생성.
     * </pre>
     *
     * @param board Board
     * @return 게시판 생성
     */
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

    /**
     * <pre>
     *  게시물 작성.
     * </pre>
     *
     * @param board Board
     * @return 게시물 작성
     */
    @RequestMapping(value = "/writeBoardArticle", method = RequestMethod.POST)
    public String writeBoardArticle(@ModelAttribute("board") Board board,
                                    BindingResult result,
                                    RedirectAttributes redirectAttributes) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setNttNo(1);
        board.setSortOrder(1);
        board.setUseAt("Y");
        board.setAnswerAt("Y");
        board.setInsertId(name);

        int insertCount = boardService.writeBoardArticle(board);

        logger.info("Write Board Article");
        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/freeBoard";
    }

    @RequestMapping(value = "/updateBoardArticle", method = RequestMethod.POST)
    public String updateBoardArticle(@ModelAttribute("board") Board board,
                                    BindingResult result,
                                    RedirectAttributes redirectAttributes) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();
        Integer bbsId = board.getBbsId();

        board.setBbsId(bbsId);
        board.setUpdateId(name);

        int updateCount = boardService.updateBoardArticle(board);

        logger.info("Update Board Article");
        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/main/"+bbsId;
    }



    @ResponseBody
    @RequestMapping(value = "/list/{boardId}", method = RequestMethod.GET)
    public List insertHop(Model model,
                           @PathVariable("boardId") Integer boardId) {
        // 맥주 홉 저장
        Board board = new Board();
        board.setNttId(1);
        board.setBbsId(boardId);

        List<Board> selectCommentList = boardService.selectCommentList(board);

        return selectCommentList;
    }

    @RequestMapping(value = "/deleteBoardArticle/{bbsId}/{nttId}", method = RequestMethod.GET)
    public String deleteBoardArticle(@ModelAttribute("board") Board board,@PathVariable("bbsId") Integer bbsId, @PathVariable("nttId") Integer nttId){

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setBbsId(bbsId);
        board.setNttId(nttId);
        board.setDeleteId(name);

        int deleteCount = boardService.deleteBoardArticle(board);

        logger.info("Delete Board Article");
        logger.info(" @@@ " + board.getBbsNm());

        return "redirect:/board/main/"+bbsId;
    }
}


