
void main(List<String> args) {
 /* userMoney(5,0);
  ParseDollar(20);
  ParseDollar(78);
  ParseDollar(-5);*/

  // optional parametreyi degistirmeden kullanimi
  int musteri1FaizSonucu = FaizGetirisi(money: 150);
  print(musteri1FaizSonucu);

  // İkinci musterimiz daşşaklı bir abi ve faiz oranini kendisi belirleyebiliyor

  int dassakliMusteri = FaizGetirisi(money: 2000, faizorani: 10); // optional parametrenin varsayılanını değiştirmek istersek böyle yapabiliriz
  print("Dassakli abimin faiz orani sonucu ekstradan kasasina eklenecek para = $dassakliMusteri");
  
}

void userMoney(int minimumValue ,int money){
  if(money > 0){
    print("para var");

  } 
  else{
    print("para yok");
  }
}

/*
  bir müşteri TL olan parasını dolara çevirmek ve kaç dolar tuttugunu öğrenmek istiyor bunun örneğini yapalım
*/

void ParseDollar(int userMoney){
  final int dollar = 35;

  
  if(userMoney >= 35){
    final int result = (userMoney / dollar).toInt();
    print("Senin paran $userMoney TL ve $result \$ kadar dolar alabilirsin");
  }
  else if (userMoney < 0){
    print("Eksi bakiye girdiniz Lütfen tekrardan deneyiniz");
  }
  else{
    print("Maalesef elindeki para $userMoney TL bununla dolar alamazsin");
  }

}

// Optinal Parametre

/*
  Diyelim ki kullanıcıdan 2 tane değer alacağız fakat birini vermesi gerekmiyor onun için şöyle yapabiliriz

  // Banka faiz uygulamamız olsun
  * Müşteri parasını girsin daşşaklı bir müşteri olsun isterse kendisi faiz oranını yazabilsin. yazmak istemzse belirlediğimiz standart faiz oranını alalım
*/

int FaizGetirisi ({required int money, int faizorani =  5}){ // optional parametre yi {} bunun içerisine yazarız
  int result = (money / faizorani).toInt();
  return result;
}