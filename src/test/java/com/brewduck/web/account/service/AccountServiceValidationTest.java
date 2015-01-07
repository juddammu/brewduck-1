package com.brewduck.web.account.service;

import com.brewduck.web.account.dao.AccountDao;
import com.brewduck.web.domain.Account;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.util.Set;

import static org.junit.Assert.assertEquals;
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
public class AccountServiceValidationTest {


    @Autowired
    private AccountDao accountDao;

    private MessageSource messageSource;

    private Account account;

    private static Validator validator;

    @BeforeClass
    public static void setUp() {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        validator = factory.getValidator();
    }

    @Test
    @Ignore
    public void accountIsNull2() {
        account = new Account("hukorunaver.com", "test");

        Set<ConstraintViolation<Account>> constraintViolations =
                validator.validate( account );

     //   assertEquals( 1, constraintViolations.size() );

        //System.out.println(constraintViolations.iterator().next().getMessage());
        assertEquals(
                "may not be null",
                constraintViolations.iterator().next().getMessage()
        );

        System.out.println(constraintViolations.iterator().next().getMessage());


    }

    @Test
    @Ignore
    public void manufacturerIsNull() {

    }

    @Test
    @Ignore
    public void licensePlateTooShort() {
        //Car car = new Car( "Morris", "D", 4 );

/*        Set<ConstraintViolation<Car>> constraintViolations =
                validator.validate( car );

        assertEquals( 1, constraintViolations.size() );

        System.out.println(constraintViolations.iterator().next().getMessage());

        assertEquals(
                "size must be between 2 and 14",
                constraintViolations.iterator().next().getMessage()
        );*/
    }

    //회원 정보 조회
    @Test
    @Ignore
    public void selectAccountTest() {
        account.setEmail("hukoru");

        assertNotNull("테스트 대상이 잘 생성되었는지 확인", account);


//        assertThat(true, is(resultAccount.getName().equals("세환")));
    }

}
