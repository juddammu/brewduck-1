package com.brewduck.framework.convert;


/**
 * Created by asus on 15. 1. 12.
 */
public class VolumeConverter {

    //162f = 72.22c
    final private double LITER_TO_GALLON = 3.785412;

    private double factor;


    public VolumeConverter(String unit) {
        if (unit.equals("gallon")) {
            factor = LITER_TO_GALLON;
        }
    }

    public double toGalon(double measurement) {
        return (measurement * factor);
    }

    public double fromLiter(double measurement) {

        return (measurement / factor);
    }

}
