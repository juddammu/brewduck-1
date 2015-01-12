package com.brewduck.framework.unitConverter;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class UnitConverter {

    final private double INCH_TO_METER = 0.0254;

    private double factor;


    private UnitConverter(String unit){
        if(unit.equals("in")){
            factor = INCH_TO_METER;
        }
    }

    public double toMetters(double measurement){
        return (measurement * factor);
    }

    public double fromMetters(double measurement){
        return (measurement / factor);
    }

}
