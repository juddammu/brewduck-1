/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.service;

import com.brewduck.web.common.dao.CodeDao;
import com.brewduck.web.domain.Common;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Service("codeService")
public class CodeServiceImpl implements CodeService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CodeDao codeDao;



    @Override
    public List<Common> selectCodeMaster() {
        return codeDao.selectCodeMaster();
    }

    @Override
    public List<Common> selectCodeList(Common common) {
        return codeDao.selectCodeList(common);
    }
}
