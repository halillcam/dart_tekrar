

void poor(int money){
  const int poor_rate = 5;
  final double result = ((money * poor_rate)/ 100);
  print("your moneys interest rate $poor_rate and you have new money = ${result + money}"); 
}

void rich(int money, {double interest_rate = 7 }){
  final calculate = ((money * interest_rate) / 100).toInt();
  
  if(interest_rate > 7){
    print("Your money interest rate = $interest_rate and you have new money = ${calculate+ money}");
  }
  else{
    print("Your money interest rate $interest_rate and your new money = ${calculate + money}");
  }
}

void main() {
  /*rich(2500);
  rich(3000, interest_rate: 10);
  poor(600);*/

  int customerID = 2;

  switch(customerID){
    case 1:
    rich(2500);
    break;

    case 2:
    poor(500);
    break;

    default:
    print("yanlis deger girdiniz tekrar deneyiniz");
  }
}
