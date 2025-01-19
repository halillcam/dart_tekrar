void main(){
calculate(17);
}

void calculate(int age){
  
  if(age <= 0){
     print("Hatali deger girdiniz tekrar deneyiniz");
  }
   else if(age >= 16 ){
    print("A1 sinifi ehliyet alabilirsin (B) Sinifi icin ${18 - age} yil (C) icin ${21 - age} yil  ve (D) icin ${24 - age} yil beklemen gerekiyor ");
  }
  else if(age >= 18 && age < 21){
     print("A1 ve B sinifi Ehliyet alabilirsin");
  }
  else if(age >= 21 && age <24){
    print("C sinifi ehliyet alabilirsin");
  }
  else if(age >= 24){
    print("Bütün Ehliyetleri alabilirsin");
  }


  else{
    int result = 16 - age;
    print("Ehliyet alabilmen için $result yil kadar beklemen gerekiyor");
  }
  
  
  
  
  
  
  /*switch(age){
    case 16: 
    print("A1 sinifi ehliyet alabilirsin (B) Sinifi icin 2 yil (C) icin 5 ve (D) icin 8 yil beklemen gerekiyor ");
    break;

    case 18: 
      print("A1 ve B sinifi Ehliyet alabilirsin");
      break;

    case 21:
    print("A1,B ve C sinifi Ehliyet alabilirsin");
    break;

    case 24:
    print("Bütün Ehliyetleri alabilirsin");
    break;

    default:
    int result = 16 - age;
    print("Ehliyet alabilmen için $result yil kadar beklemen gerekiyor");
  }*/

}