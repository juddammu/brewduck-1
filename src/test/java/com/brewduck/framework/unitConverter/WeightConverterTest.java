package com.brewduck.framework.unitConverter;

import com.brewduck.framework.convert.WeightConverter;
import com.brewduck.web.domain.Converter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by asus on 15. 1. 12.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class WeightConverterTest {

    @Test(timeout=5000)
    public void WeightConverterTest() {

        String fromUnit = "gram";
        String toUnit = "pounds";

        Converter converter = new Converter();

        converter.setFromUnit(fromUnit);
        converter.setToUnit(toUnit);

        WeightConverter weightConverter = new WeightConverter(converter);

        //todo : 테스트 값 일치 하지 않음
        System.out.println(weightConverter.toOz(28));

/*
  *//*      double oz = from.toOz(1);
        double gram = from.fromGram(oz);
*//*
        if(fromUnit.equals("gram")){
            if(toUnit.equals("oz")){    //gram --> oz
                returnWeight =  from.toOz(weight);
            }else if(toUnit.equals("pounds")){    //gram --> oz
                returnWeight =  from.toPounds(weight);
            }
        }

        //double ceisius = from.fromFerenheit(ferenheit);

        //inch --> metter
        System.out.println("returnWeight" + returnWeight);*/

    }
}
