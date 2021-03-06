/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.dao;

import com.brewduck.web.domain.Board;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
public interface BoardDao {
    public List<Board> selectBoard(Board board);

    public List<Board> selectBoardList(Board board);

    public List<Board> selectCommentList(Board board) throws DataAccessException;

    public int insertBoardMaster(Board board);

    public int writeBoardArticle(Board board);

    public int updateBoardArticle(Board board);

    public int deleteBoardArticle(Board board);

    public Board selectBoardDetail(Board board);

    public Board editBoard(Board board);

    public List<Board> getNewPost(Board board);

    public Board selectBoardName(Board board);

    public List<Board> selectReplyList(Board board);

    public int writeReply(Board board);

    public int deleteReply(Board board);

    public Board countReply(Board board);

    public int updateHitCount(Board board);

}
