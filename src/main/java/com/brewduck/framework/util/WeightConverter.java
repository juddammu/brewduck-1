package com.brewduck.framework.util;



/**
 * Created by asus on 15. 1. 12.
 */
public class WeightConverter {

    final private double GRAMS_TO_OZ = 28.349523125;
    final private double GRAMS_TO_POUNDS = 0.0254;
    final private double KILOGRAMS_TO_OZ = 28.349523125;
    final private double KILOGRAMS_TO_POUNDS = 0.0254;

    private double factor;


    public WeightConverter(String unit){
        if(unit.equals("oz")){
            factor = GRAMS_TO_OZ;
        }else if(unit.equals("pounds")){
            factor = GRAMS_TO_POUNDS;
        }
    }

    public double toOz(double measurement){
        return (measurement / factor);
    }

    public double fromOz(double measurement){
        return (measurement * factor);
    }

}
