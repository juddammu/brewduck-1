package com.brewduck.framework.unitConverter;

import com.brewduck.framework.util.WeightConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class WeightConverterTest {

    @Test(timeout=5000)
    public void WeightConverterTest() {
        String fromUnit = "oz";

        WeightConverter from = new WeightConverter(fromUnit);

        double oz = from.toOz(1);
        double gram = from.fromOz(oz);
        //double ceisius = from.fromFerenheit(ferenheit);

        //inch --> metter
        System.out.println("gram   --> oz " + oz);
        System.out.println("oz --> gram   " + gram);

    }
}
