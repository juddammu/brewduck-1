package com.brewduck.framework.unitConverter;

import com.brewduck.framework.convert.VolumeConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class VolumeConverterTest {

    @Test(timeout = 5000)
    public void VolumeConverterTest() {
        String fromUnit = "gallon";

        VolumeConverter from = new VolumeConverter(fromUnit);

        double liter = from.toGalon(6);
        double gallon = from.fromLiter(liter);
        //double ceisius = from.fromFerenheit(ferenheit);

        //inch --> metter
        System.out.println("gallon  --> liter " + liter);
        System.out.println("liter   --> gallon   " + gallon);

    }
}
