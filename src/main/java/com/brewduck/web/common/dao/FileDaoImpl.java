/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.dao;

import com.brewduck.web.domain.FileInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Repository("fileDao")
public class FileDaoImpl implements FileDao {
    private static final Logger logger = LoggerFactory.getLogger(FileDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    @Override
    public int selectFileSeq() {
        return (Integer) sqlSessionTemplate.selectOne("Common.selectFileSeq");
    }

    @Override
    public int selectFileNo(Integer seq) {
        return (Integer) sqlSessionTemplate.selectOne("Common.selectFileNo", seq);
    }

    @Override
    public int selectFileCount(Integer seq) {
        return (Integer) sqlSessionTemplate.selectOne("Common.selectFileCount", seq);
    }

    @Override
    public int insertNoticeFile(FileInfo fileInfo) {
        return sqlSessionTemplate.insert("Common.insertNoticeFile", fileInfo);
    }

    @Override
    public int updateNoticeFile(FileInfo fileInfo) {
        return sqlSessionTemplate.update("Common.updateNoticeFile", fileInfo);
    }

    @Override
    public int deleteNoticeFile(FileInfo fileInfo) {
        return sqlSessionTemplate.update("Common.deleteNoticeFile", fileInfo);
    }


}
