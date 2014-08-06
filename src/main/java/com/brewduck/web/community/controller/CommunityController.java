package com.brewduck.web.community.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.FileInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

@Controller
@RequestMapping(value = "/community")
public class CommunityController {

    private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

    @Autowired
    private BoardService boardService;

    @Autowired
    private CommonService commonService;


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
    public String writeBoardIndex(@PathVariable("bbsId") Integer bbsId, Model model) {

        model.addAttribute("bbsId", bbsId);

        return "community/write";
    }

    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String writeBoardMain(@ModelAttribute("board") Board board,
                                 @RequestParam MultipartFile file,
                                 @RequestParam MultipartFile coverFile,
                                 HttpServletRequest request,
                                 BindingResult result,
                                 RedirectAttributes redirectAttributes) throws IOException {

        int fileseq = 0;
        int coverFileseq = 0;

        HttpSession session = request.getSession();

        if(coverFile.getSize() > 0){
            FileInfo coverFileInfo = new FileInfo();

            String coverFileName = coverFile.getOriginalFilename();   //파일명
            String coverFilemime = coverFile.getContentType();        //마임 타입
            String coverFilePath = session.getServletContext().getRealPath("/")+"/resources/upload/";   //파일 path
            coverFile.transferTo(new File(coverFilePath+coverFileName));
            Long coverFileSze = coverFile.getSize();

            coverFileseq = commonService.selectFileSeq();
            coverFileInfo.setFileNo(coverFileseq);

            GregorianCalendar gc = new GregorianCalendar();
            SimpleDateFormat simDate = new SimpleDateFormat("yyyyMMddHHmmss");
            Date nowTime = gc.getTime();
            String[] ArrFileName = null;

            if( coverFileName.indexOf(".") >= 0 ) {
                ArrFileName = coverFileName.split("\\.");
            }
            coverFileInfo.setSeq(coverFileseq);
            coverFileInfo.setFilename(coverFileName);
            coverFileInfo.setRealFilename(ArrFileName[0] + "_" + simDate.format(nowTime)+"."+ArrFileName[1]);
            coverFileInfo.setFilesize(coverFile.getSize());
            coverFileInfo.setFileNo(1);
            coverFileInfo.setFilemime(coverFileName);

            int fileInsertCount = commonService.insertNoticeFile(coverFileInfo);
        }

        if(file.getSize() > 0){

            FileInfo fileInfo = new FileInfo();

            String fileName = file.getOriginalFilename();   //파일명
            String filemime = file.getContentType();        //마임 타입
            String filePath = session.getServletContext().getRealPath("/")+"/resources/upload/";   //파일 path
            file.transferTo(new File(filePath+fileName));
            Long fileSze = file.getSize();

            fileseq = commonService.selectFileSeq();
            fileInfo.setFileNo(fileseq);

            GregorianCalendar gc = new GregorianCalendar();
            SimpleDateFormat simDate = new SimpleDateFormat("yyyyMMddHHmmss");
            Date nowTime = gc.getTime();
            String[] ArrFileName = null;

            if( fileName.indexOf(".") >= 0 ) {
                ArrFileName = fileName.split("\\.");
            }
            fileInfo.setSeq(fileseq);
            fileInfo.setFilename(fileName);
            fileInfo.setRealFilename(ArrFileName[0] + "_" + simDate.format(nowTime)+"."+ArrFileName[1]);
            fileInfo.setFilesize(file.getSize());
            fileInfo.setFileNo(1);
            fileInfo.setFilemime(filemime);

            int fileInsertCount = commonService.insertNoticeFile(fileInfo);
        }

        Account account = AuthenticationUtils.getUser();
        String name = account.getName();

        board.setAtchFileId(fileseq+"");
        board.setBbsId(board.getBbsId());
        board.setAtchCoverFileId(coverFileseq+"");
        board.setNttNo(1);
        board.setSortOrder(1);
        board.setUseAt("Y");
        board.setAnswerAt("Y");
        board.setInsertId(name);

        int insertCount = boardService.writeBoardArticle(board);

        logger.info(" @@@ " + board.getBbsNm());

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


