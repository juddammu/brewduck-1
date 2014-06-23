/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.service;

import com.brewduck.web.common.dao.BoardDao;
import com.brewduck.web.domain.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Service("boardService")
public class BoardServiceImpl implements BoardService {
    private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

    @Autowired
    private BoardDao boardDao;

    @Override
    public List<Board> selectBoard(Board board) {
        return boardDao.selectBoard(board);
    }

    @Override
    public List<Board> selectBoardList(Board board) {
        return boardDao.selectBoardList(board);
    }

    @Override
    public Board selectBoardDetail(Board board) {
        return boardDao.selectBoardDetail(board);
    }

    @Override
    public Board editBoard(Board board) {
        return boardDao.editBoard(board);
    }

    @Override
    public List<Board> selectCommentList(Board board) {
        return boardDao.selectCommentList(board);
    }

    @Transactional
    @Override
    public int insertBoardMaster(Board board) {
        int insertCount = 0;

        insertCount = boardDao.insertBoardMaster(board);

        return insertCount;
    }

    @Transactional
    @Override
    public int writeBoardArticle(Board board) {
        int insertCount = 0;

        insertCount = boardDao.writeBoardArticle(board);

        return insertCount;
    }

}
