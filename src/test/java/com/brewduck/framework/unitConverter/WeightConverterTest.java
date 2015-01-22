package com.brewduck.framework.unitConverter;

import com.brewduck.framework.convert.WeightConverter;
import com.brewduck.web.domain.Converter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class WeightConverterTest {

    final private double GRAMS_TO_OZ = 28.349523;
    final private double GRAMS_TO_POUNDS = 453.59237;

    final private double KILOGRAMS_TO_OZ = 0.02835;
    final private double KILOGRAMS_TO_POUNDS = 0.453592;

    final private double POUNDS_TO_KILOGRAMS = 0.45359237;
    final private double POUNDS_TO_GRAMS = 453.59237;

    final private double OUNCE_TO_KILOGRAMS = 0.0283495231;
    final private double OUNCE_TO_GRAMS = 028.3495231;

    @Test(timeout=5000)
    public void WeightConverterTest() {

        String fromUnit = "gram";
        String toUnit = "pounds";

        Converter converter = new Converter();

        converter.setFromUnit(fromUnit);
        converter.setToUnit(toUnit);

        WeightConverter weightConverter = new WeightConverter(converter);
        double requestWeight = 1.0;
        double responseWeight = 0.0;
        //delta 값은 소수점의 허용 오차,
        //assertEquals(0.551, 0.5512, 0.001) => equal
        //assertEquals(0.551, 0.5512, 0.0001) => not equal
        double delta = 0.000001;

        assertNotNull("파운드 --> 킬로그램 변환", weightConverter.getPoundToKg(requestWeight));
        assertNotNull("파운드 --> 그램 변환    ", weightConverter.getPoundToGrams(requestWeight));

        assertNotNull("온즈 --> 킬로그램 변환", weightConverter.getOunceToKg(requestWeight));
        assertNotNull("온즈 --> 그램 변환    ", weightConverter.getOunceToGrams(requestWeight));
        assertNotNull("온즈 --> 파운드 변환", weightConverter.getOunceToPounds(requestWeight));

        assertNotNull("그램 --> 온즈 변환  ", weightConverter.getGramsToOunce(requestWeight));
        assertNotNull("그램 --> 파운드 변환", weightConverter.getGramsToPound(requestWeight));

        assertNotNull("킬로그램 --> 온즈   변환", weightConverter.getKgToOunce(requestWeight));
        assertNotNull("킬로그램 --> 파운드 변환    ", weightConverter.getKgToPound(requestWeight));



        assertEquals(requestWeight*POUNDS_TO_KILOGRAMS, weightConverter.getPoundToKg(requestWeight), delta);
        assertEquals(requestWeight*POUNDS_TO_GRAMS,     weightConverter.getPoundToGrams(requestWeight), delta);

        assertEquals(requestWeight*OUNCE_TO_KILOGRAMS, weightConverter.getOunceToKg(requestWeight), delta);
        assertEquals(requestWeight*OUNCE_TO_GRAMS,     weightConverter.getOunceToGrams(requestWeight), delta);

        assertEquals(requestWeight/GRAMS_TO_OZ,     weightConverter.getGramsToOunce(requestWeight), delta);
        assertEquals(requestWeight/GRAMS_TO_POUNDS, weightConverter.getGramsToPound(requestWeight), delta);

        assertEquals(requestWeight/KILOGRAMS_TO_OZ,     weightConverter.getKgToOunce(requestWeight), delta);
        assertEquals(requestWeight/KILOGRAMS_TO_POUNDS, weightConverter.getKgToPound(requestWeight), delta);


    }

    @Test(timeout=5000)
    public void WeightConverterSwitchTest() {

        String fromUnit = "gram";
        String toUnit = "pounds";

        Converter converter = new Converter();

        converter.setFromUnit(fromUnit);
        converter.setToUnit(toUnit);

        WeightConverter weightConverter = new WeightConverter(converter);

        //weightConverter.getPoundToKg(requestWeight));

        System.out.println(weightConverter.getGramsToPound(1.0));
    }
}
