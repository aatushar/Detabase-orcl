
package dolarmonetoryunit;

import java.util.Scanner;


public class DolarMonetoryUnit {

    
    public static void main(String[] args) {
        Scanner input= new Scanner(System.in);
//        a scanner create
        System.out.println("Enter an amount in double , for example: ");
//        It's show like a prompt
        double amount = input.nextDouble();
        
        int remainingAmount = (int)(amount * 100);
//        It's a multyply for count
        int numberOfOneDollars = remainingAmount/100;
//        covert into sent
        remainingAmount = remainingAmount % 100;
        
        
        int numberOfQuarters = remainingAmount / 25;
//        Quarters
        remainingAmount = remainingAmount % 25;
        
        int numberOfDimes = remainingAmount /10;
        remainingAmount = remainingAmount % 10;
        
        int numberOfNickels = remainingAmount /5;
        remainingAmount = remainingAmount %5;
        
        int numberOfPennies = remainingAmount;
        
        
        
        System.out.println("Your amount" + amount +" Consists of" );
         System.out.println(" " + numberOfOneDollars +" Dollars" );
          System.out.println(" " + numberOfQuarters + " quarters ");
         System.out.println(" " + numberOfDimes + " dimes ");
         System.out.println(" " + numberOfNickels + " Nickels ");
         System.out.println(" " + numberOfPennies + " pennies ");
        
        


        
    }
    
}
