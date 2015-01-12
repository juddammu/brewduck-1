package com.brewduck.framework.convert;



/**
 * Created by asus on 15. 1. 12.
 */
public class TemperatureConverter {

    //162f = 72.22c
    final private double FERENHEIT_TO_CEISIUS = 1.8;

    private double factor;


    public TemperatureConverter(String unit){
        if(unit.equals("ceisius")){
            factor = FERENHEIT_TO_CEISIUS;
        }
    }

    public double toCeisius(double measurement){
        return (measurement * factor) + 32;
    }

    public double fromFerenheit(double measurement){
        measurement = measurement - 32;
        return (measurement / factor);
    }

}
