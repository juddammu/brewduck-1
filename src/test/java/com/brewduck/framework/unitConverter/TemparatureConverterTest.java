package com.brewduck.framework.unitConverter;

import com.brewduck.framework.convert.TemperatureConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TemparatureConverterTest {

    @Test(timeout=5000)
    public void TemparatureConverterTest() {
        String fromUnit = "ceisius";

        TemperatureConverter from = new TemperatureConverter(fromUnit);

        double ferenheit = from.toCeisius(0);
        double ceisius = from.fromFerenheit(ferenheit);

        //inch --> metter
        System.out.println("ceisius   --> ferenheit " + ferenheit);
        System.out.println("ferenheit --> ceisius   " + ceisius);

    }
}
