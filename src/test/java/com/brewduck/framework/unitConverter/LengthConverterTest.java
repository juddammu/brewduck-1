package com.brewduck.framework.unitConverter;

import com.brewduck.framework.convert.LengthConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class LengthConverterTest {


    @Test(timeout = 5000)
    public void LengthConverterTest() {
        String fromUnit = "in";

        LengthConverter from = new LengthConverter(fromUnit);

        double metters = from.toMetters(4);
        double inchs = from.fromInch(metters);

        //inch --> metter
        System.out.println("inch   --> metter " + metters);
        System.out.println("metter --> inch " + inchs);

    }
}
