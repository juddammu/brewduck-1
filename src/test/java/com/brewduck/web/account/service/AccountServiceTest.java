package com.brewduck.web.account.service;

import com.brewduck.framework.crypto.SimpleCrypto;
import com.brewduck.framework.mail.MailService;
import com.brewduck.web.account.dao.AccountDao;
import com.brewduck.web.domain.Account;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;


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

    private static Logger LOGGER = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Autowired
    private AccountDao accountDao;

    private Account account = new Account();
    private Account resultAccount;
    private int insertCount = 0;
    private String authKey = null;
    private boolean result = false;

    //회원 정보 조회
    @Test
    public void selectAccountTest() {
        account.setEmail("hukoru@naver.com");
        resultAccount = accountDao.selectAccount(account);

        assertThat(true, is(resultAccount.getName().equals("세환")));
    }

    //회원 정보 목록 조회
    @Test
    @Ignore
    public void selectAccountListTest() {
        Account account = new Account();
        List<Account> selectAccountList = accountDao.selectAccountList(account);
        //결과를 확인한다.
        assertNotNull("테스트 대상이 잘 생성되었는지 확인", selectAccountList);
    }

    //회원 가입
    @Transactional
    @Test
    @Ignore
    public void insertAccountTest() {
        account.setName("테스트");
        account.setEmail("hukoru@naver.com");
        account.setPassword("1234");

        Account currentAccount = accountDao.selectAccount(account);

        if (currentAccount == null) {
            insertCount = accountDao.insertAccount(account);

            assertNotNull("insertCount", insertCount);
            assertNotNull("가입 UserId", account.getId());
            assertThat(true, is(insertCount == 1));

            if (insertCount > 0) {
                try {
                    authKey = SimpleCrypto.encrypt(
                        SimpleCrypto.seed,
                        String.valueOf(account.getId())
                    );
                    LOGGER.info("가입 인증키 : " + authKey);
                } catch (Exception e) {
                    throw new RuntimeException("이메일 인증키 암호화하는 도중에 오류가 발생하였습니다.", e);
                }
            }

            if (authKey != null) {
                MailService mailService = new MailService();
                result = mailService.sendMail(
                    account.getEmail(),
                    "[브루덕] 회원 가입을 축하드립니다.",
                    authKey
                );

                // 이메일 전송이 실패되면 회원 가입 롤백
                if (!result) {
                    throw new RuntimeException("이메일 발송 실패하였습니다.");
                }
            }
        } else {
            throw new RuntimeException("가입된 이메일이 있습니다.");
        }

    }
}
