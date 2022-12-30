public with sharing class FitnessClass {
    public static Decimal calculateBMI(Decimal weight, Decimal height){
        if(height <= 0 || weight < 0){
            return -1;
        }
        else{
        Decimal result = weight / (height*height);
        return result;
        }
    }

    public static Decimal calculatePace(Decimal distance, Decimal minutes){
        Decimal hr = minutes/60;
        Decimal pace = distance/hr;
        return pace;
    }
}
