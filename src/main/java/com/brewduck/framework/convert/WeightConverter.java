package com.brewduck.framework.convert;


import com.brewduck.web.domain.Converter;

/**
 * Created by asus on 15. 1. 12.
 */
public class WeightConverter {

    final private double GRAMS_TO_OZ = 28.349523;
    final private double GRAMS_TO_POUNDS = 453.59237;

    final private double KILOGRAMS_TO_OZ = 0.02835;
    final private double KILOGRAMS_TO_POUNDS = 0.453592;

    final private double POUNDS_TO_KILOGRAMS = 0.45359237;
    final private double POUNDS_TO_GRAMS = 453.59237;

    final private double OUNCE_TO_KILOGRAMS = 0.0283495231;
    final private double OUNCE_TO_GRAMS = 028.3495231;

    private double factor;


    public WeightConverter(Converter converter){

        if(converter.getFromUnit().equals("pounds")){
            if(converter.getToUnit().equals("gram")){    //gram --> oz
                factor = POUNDS_TO_KILOGRAMS;
            }
        }
    }

    private double getRoundMeasurement(double pound){
       //return Math.round(pound/0.001)*0.001;
       return pound;
    }

    public double getPoundToKg(double pound) {
        double kg = pound * POUNDS_TO_KILOGRAMS;
        return getRoundMeasurement(kg);
    }

    public double getPoundToGrams(double pound) {
        double kg = pound * POUNDS_TO_GRAMS;
        return getRoundMeasurement(kg);
    }

    public double getOunceToKg(double ounce) {
        double kg = ounce * OUNCE_TO_KILOGRAMS;
        return getRoundMeasurement(kg);
    }

    public double getOunceToGrams(double ounce) {
        double kg = ounce * OUNCE_TO_GRAMS;
        return getRoundMeasurement(kg);
    }

    public double getGramsToOunce(double grams){
        double kg = grams / GRAMS_TO_OZ;
        return getRoundMeasurement(kg);
    }

    public double getGramsToPound(double grams){
        double kg = grams / GRAMS_TO_POUNDS;
        return getRoundMeasurement(kg);
    }

    public double getKgToOunce(double grams){
        double kg = grams / KILOGRAMS_TO_OZ;
        return getRoundMeasurement(kg);
    }

    public double getKgToPound(double grams){
        double kg = grams / KILOGRAMS_TO_POUNDS;
        return getRoundMeasurement(kg);
    }


}
