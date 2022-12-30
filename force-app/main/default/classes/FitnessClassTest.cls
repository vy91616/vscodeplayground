@isTest
public class FitnessClassTest {
    @isTest
    public static void calculateBMITest(){
        Decimal weight = 60;
        Decimal height = 1.2;
        Decimal result = FitnessClass.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(41.67, result, 'BMI shoudld be 41.67');
    }

    @isTest
    public static void calculateBMITest2(){
        Decimal weight = 0;
        Decimal height = 1.2;
        Decimal result = FitnessClass.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(0, result, 'BMI shoudld be 0');
    }

    @isTest
    public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = 0;
        Decimal result = FitnessClass.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(-1, result, 'Invalid input');
    }


    @isTest
    public static void calculatePacetest(){
        Decimal distance = 10;
        Decimal minutes = 60;
        Decimal result = FitnessClass.calculatePace(distance, minutes);
        System.assertEquals(10,result, 'Pacet shoudld be 10km/hr');
    }
}