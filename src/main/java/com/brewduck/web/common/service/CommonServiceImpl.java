/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.service;

import com.brewduck.web.common.dao.CommonDao;
import com.brewduck.web.common.dao.FileDao;
import com.brewduck.web.domain.Common;
import com.brewduck.web.domain.FileInfo;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Service("commonService")
public class CommonServiceImpl implements CommonService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * Global instance of the HTTP transport.
     */
    private static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

    /**
     * Global instance of the JSON factory.
     */
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();

    /**
     * Global instance of Youtube object to make all API requests.
     */
    private static YouTube youtube;

    /* Global instance of the format used for the video being uploaded (MIME type). */
    private static String VIDEO_FILE_FORMAT = "video/*";

    private static Logger LOGGER = LoggerFactory.getLogger(CommonServiceImpl.class);

    @Autowired
    private CommonDao commonDao;

    @Autowired
    private FileDao fileDao;


    public String systemDate() throws RuntimeException {
        long time = System.currentTimeMillis();
        SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd-hh:mm:ss");
        String systemDate = dayTime.format(new Date(time));
        return systemDate;
    }

    @Override
    public int insertImage(Common common) throws RuntimeException {
        return commonDao.insertImage(common);
    }

    @Override
    public int selectImageId() throws RuntimeException {
        return commonDao.selectImageId();
    }

    @Override
    public int selectMovieId() throws RuntimeException {
        return commonDao.selectMovieId();
    }

    @Override
    public List<Common> selectGenderList() throws RuntimeException {
        return commonDao.selectGenderList();
    }

    @Override
    public List<Common> selectMonthList() throws RuntimeException {
        return commonDao.selectMonthList();
    }

    @Override
    public List<Common> selectMainCategoryList() throws RuntimeException {
        return commonDao.selectMainCategoryList();
    }

    @Override
    public List<Common> selectSubCategoryList(Common common) throws RuntimeException {
        return commonDao.selectSubCategoryList(common);
    }

    @Override
    public List<Common> selectMainAreaList() throws RuntimeException {
        return commonDao.selectMainAreaList();
    }

    @Override
    public List<Common> selectSubAreaList(Common common) throws RuntimeException {
        return commonDao.selectSubAreaList(common);
    }

    @Override
    public Common selectMainCategory(Common common) throws RuntimeException {
        return commonDao.selectMainCategory(common);
    }

    @Override
    public Common selectSubCategory(Common common) throws RuntimeException {
        return commonDao.selectSubCategory(common);
    }

    @Transactional
    @Override
    public int selectFileSeq() {
        int fileseq = 0;

        fileseq = fileDao.selectFileSeq();

        if (fileseq > 0) {
            LOGGER.info("파일SEQ 가져오기 성공");
        } else {
            LOGGER.info("파일SEQ 가져오기 오류");
        }

        return fileseq;
    }

    @Transactional
    @Override
    public int selectFileNo(Integer seq) {
        int fileseq = 0;

        fileseq = fileDao.selectFileNo(seq);

        if (fileseq > 0) {
            LOGGER.info("파일SEQ 가져오기 성공");
        } else {
            LOGGER.info("파일SEQ 가져오기 오류");
        }

        return fileseq;
    }

    @Transactional
    @Override
    public int selectFileCount(Integer seq) {
        int filecount = 0;

        filecount = fileDao.selectFileCount(seq);

        return filecount;
    }

    /*파일 등록*/
    @Transactional
    @Override
    public int insertNoticeFile(FileInfo fileInfo) {
        int insertCount = 0;

        boolean result = false;

        insertCount = fileDao.insertNoticeFile(fileInfo);

        if (insertCount > 0) {
            LOGGER.info("등록 처리");
        } else {
            LOGGER.info("등록 오류");
        }

        return insertCount;
    }

    /*파일 수정*/
    @Transactional
    @Override
    public int updateNoticeFile(FileInfo fileInfo) {
        int updateCount = 0;

        updateCount = fileDao.updateNoticeFile(fileInfo);

        if (updateCount > 0) {
            LOGGER.info("수정 처리");
        } else {
            LOGGER.info("수정 오류");
        }

        return updateCount;
    }

    @Transactional
    @Override
    public int deleteNoticeFile(FileInfo fileInfo) {
        int deleteCount = 0;

        deleteCount = fileDao.deleteNoticeFile(fileInfo);

        LOGGER.info("deleteCount : " + deleteCount);
        if (deleteCount > 0) {
            LOGGER.info("삭제 처리");
        } else {
            LOGGER.info("삭제 오류");
        }

        return deleteCount;
    }
}
