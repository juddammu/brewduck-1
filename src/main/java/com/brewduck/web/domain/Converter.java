package com.brewduck.web.domain;

/**
 * Created with IntelliJ IDEA.
 * User: hukoru
 * Date: 13. 8. 26
 * Time: 오후 11:53
 * To change this template use File | Settings | File Templates.
 */
public class Converter {

    private static final long serialVersionUID = 1L;

    final private double GRAMS_TO_OZ = 28.349523125;
    final private double GRAMS_TO_POUNDS = 0.220462;
    final private double KILOGRAMS_TO_OZ = 28.349523125;
    final private double KILOGRAMS_TO_POUNDS = 0.0254;

    //게시물 ID
    private String fromUnit;

    private String toUnit;

    private double fromMeasurement;

    private double toMeasurement;


    public String getFromUnit() {
        return fromUnit;
    }

    public void setFromUnit(String fromUnit) {
        this.fromUnit = fromUnit;
    }

    public String getToUnit() {
        return toUnit;
    }

    public void setToUnit(String toUnit) {
        this.toUnit = toUnit;
    }

    public double getFromMeasurement() {
        return fromMeasurement;
    }

    public void setFromMeasurement(double fromMeasurement) {
        this.fromMeasurement = fromMeasurement;
    }

    public double getToMeasurement() {
        return toMeasurement;
    }

    public void setToMeasurement(double toMeasurement) {
        this.toMeasurement = toMeasurement;
    }
}
