package com.brewduck.framework.convert;


import com.brewduck.web.domain.Converter;

/**
 * Created by asus on 15. 1. 12.
 */
public class WeightConverter {

    final private double GRAMS_TO_OZ = 0.035274;
    final private double GRAMS_TO_POUNDS = 0.220462;
    final private double KILOGRAMS_TO_OZ = 28.349523125;
    final private double KILOGRAMS_TO_POUNDS = 0.0254;

    private double factor;


    public WeightConverter(Converter converter){

        if(converter.getFromUnit().equals("gram")){
            if(converter.getToUnit().equals("oz")){    //gram --> oz
                factor = GRAMS_TO_OZ;
            }else if(converter.getToUnit().equals("pounds")){  //gram --> pounds
                factor = GRAMS_TO_POUNDS;
            }
        }

    }

    public double toOz(double measurement){
        return (measurement * factor);
    }

    public double toPounds(double measurement){
        return (measurement / factor);
    }

    public double fromGram(double measurement){
        return (measurement * factor);
    }

}
