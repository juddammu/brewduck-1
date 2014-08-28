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
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
    private static final Logger logger = LoggerFactory.getLogger(BoardDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<Board> selectBoard(Board board){
        return sqlSessionTemplate.selectList("Common.selectBoard", board);
    }

    @Override
    public List<Board> selectBoardList(Board board){
        return sqlSessionTemplate.selectList("Common.selectBoardList", board);
    }

    @Override
    public List<Board> selectCommentList(Board board) throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectCommentList", board);
    }

    @Override
    public int insertBoardMaster(Board board) {
        return sqlSessionTemplate.insert("Common.insertBoardMaster", board);
    }

    @Override
    public int writeBoardArticle(Board board) {
        return sqlSessionTemplate.insert("Common.writeBoardArticle", board);
    }

    @Override
    public int updateBoardArticle(Board board) {
        return sqlSessionTemplate.update("Common.updateBoardArticle", board);
    }

    @Override
    public Board selectBoardDetail(Board board) {
        return sqlSessionTemplate.selectOne("Common.selectBoardDetail", board);
    }

    @Override
    public Board editBoard(Board board) {
        return sqlSessionTemplate.selectOne("Common.editBoard", board);
    }

    @Override
    public int deleteBoardArticle(Board board) {
        return sqlSessionTemplate.update("Common.deleteBoardArticle", board);
    }

    @Override
    public List<Board> getNewPost(Board board) {
        return sqlSessionTemplate.selectList("Common.getNewPost", board);
    }

    @Override
    public Board selectBoardName(Board board) {
        return sqlSessionTemplate.selectOne("Common.selectBoardName", board);
    }

    @Override
    public List<Board> selectReplyList(Board board) {
        return sqlSessionTemplate.selectList("Common.selectReplyList", board);
    }

    @Override
    public int writeReply(Board board) {
        return sqlSessionTemplate.insert("Common.writeReply", board);
    }

    @Override
    public int deleteReply(Board board) {
        return sqlSessionTemplate.update("Common.deleteReply", board);
    }

    @Override
    public Board countReply(Board board) {
        return sqlSessionTemplate.selectOne("Common.countReply", board);
    }

    @Override
    public int updateHitCount(Board board) {
        return sqlSessionTemplate.update("Common.updateHitCount", board);
    }

}