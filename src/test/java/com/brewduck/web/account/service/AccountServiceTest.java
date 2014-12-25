package com.brewduck.web.account.service;

import com.brewduck.web.account.dao.AccountDao;
import com.brewduck.web.domain.Account;
import org.junit.Test;


import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


import static org.junit.Assert.assertNotNull;


/**
 * <pre>
 * 계정 서비스 인터페이스.
 * </pre>
 *
 * @author 임세환
 * @version 1.0, 2013.12.11
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class AccountServiceTest {

    @Autowired
    private AccountDao accountDao;

    @Test
    public void selectAccountTest() {
        Account account = new Account();
        account.setEmail("hukoru@naver.com");
        accountDao.selectAccount(account);
    }

    @Test
    public void selectAccountListTest() {
        Account account = new Account();

        List<Account> selectAccountList = accountDao.selectAccountList(account);

        // 결과를 확인한다.
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectAccountList);
    }
}
