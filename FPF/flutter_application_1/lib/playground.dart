import 'dart:io';
main() {
  int amount1 = 100;
  int amount2 = 300;

  print('amount1: $amount1 | amount2: $amount2 \n');

double calculateTotal(int amount1, int amount2) {

  return amount1 + amount2;

}
 double total = calculateTotal(amount1, amount2);

 print('Total: $total \n');

 if( total ?350) {

  print('Total is greater than 250');

 } else {

  print('Total is less than or equal to 250');

 }

 print('End of program');

 exit(0);
 
 }
 
