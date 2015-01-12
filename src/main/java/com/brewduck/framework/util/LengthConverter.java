package com.brewduck.framework.util;



/**
 * Created by asus on 15. 1. 12.
 */
public class LengthConverter {

    final private double INCH_TO_METER = 0.0254;

    private double factor;


    public LengthConverter(String unit){
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
