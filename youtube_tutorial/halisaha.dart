// hali saha uygulaması [Degiskenler ve if else ]
/*
- 100 kapasiteli
- saat 10 da 20 kisilik bir musteri grubu gelip maç yapacak
- saat 10 da 2. musteri gelip 50 kisilik yer ayırtacak ve bu musterinin ekibi saat 11 de gelecek
- islem sonucunda hali saha kapasitesi kac kalmistir
*/

void main(List<String> args) {
  const int kapasite = 100;

  final int musteri1 = 20;
  final int musteri2 = 50;

  int saat = 11;
  int total = 0;
  if(saat == 10){
  total = kapasite - musteri1;
  print("saat 10 ve mevcut kapasite = $total ");
  }
  else if(saat > 10){
    total = kapasite - musteri2;
    print("Saat 11 ve mevcut kapasite = $total");
  }
  else{
    print("kapasite =  $kapasite");
  }
}