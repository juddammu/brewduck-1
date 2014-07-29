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
import com.brewduck.web.domain.FileInfo;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
public interface FileDao {
    /*파일 키값 가져오기*/
    public int selectFileSeq();

    /*파일 NO 가져오기*/
    public int selectFileNo(Integer seq);

    /*파일 카운트 가져오기*/
    public int selectFileCount(Integer seq);

    /*파일 등록*/
    public int insertNoticeFile(FileInfo fileInfo);

    /*파일 수정*/
    public int updateNoticeFile(FileInfo fileInfo);

    /*파일 삭제*/
    public int deleteNoticeFile(FileInfo fileInfo);
}
