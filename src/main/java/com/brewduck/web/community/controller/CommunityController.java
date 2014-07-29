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

        // 맥주 맥아 목록 조회
        List<Board> list = boardService.selectBoardList(board);
        logger.info("Board List Size : {}", list.size());
        model.addAttribute("list", list);

        return "community/list";
    }

    @RequestMapping(value = "/{bbsId}/write", method = RequestMethod.GET)
    public String writeBoardMain(@PathVariable("bbsId") Integer bbsId, Model model) {

        return "community/write";
    }

    @ResponseBody
    @RequestMapping(value = "/writeReply", method = RequestMethod.POST)
    public Board writeReply(Model model, @RequestBody Board board) {

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setWrterId(name);
        board.setWrterNm(name);
        board.setUseAt("Y");
        board.setInsertId(name);
        int insertFlag = boardService.writeReply(board);

        // 맥주 레시피 저장했는지 성공 세팅
        Board returnBoard = new Board();
        returnBoard.setInsertFlag(insertFlag);

        return returnBoard;
    }

    @ResponseBody
    @RequestMapping(value = "/replyList/{nttId}/{bbsId}", method = RequestMethod.GET)
    public List<Board> replyList (Model model, @PathVariable("nttId") Integer nttId, @PathVariable("bbsId") Integer bbsId) {
        logger.info("Free Board List");
        Board paramBoard = new Board();
        paramBoard.setNttId(nttId);
        paramBoard.setBbsId(bbsId);

        List<Board> replyList = boardService.selectReplyList(paramBoard);
        logger.info("Reply List Size : {}", replyList.size());
        model.addAttribute("replyList", replyList);

        return replyList;
    }

    @ResponseBody
    @RequestMapping(value = "/countReply/{nttId}/{bbsId}", method = RequestMethod.GET)
    public Board countReply(Model model, @PathVariable("nttId") Integer nttId, @PathVariable("bbsId") Integer bbsId) {
        Board paramBoard = new Board();
        paramBoard.setNttId(nttId);
        paramBoard.setBbsId(bbsId);

        // 맥주 발효재료 국가 별 갯수 조회.
        Board countReply = boardService.countReply(paramBoard);

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countReply;
    }
}


