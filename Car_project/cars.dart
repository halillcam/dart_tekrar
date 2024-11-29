import 'dart:io';

import '../oop/interface.dart';

class Arabalar {
  String marka, hp, koltukSayisi;
  bool sportMode;
  
  Arabalar({
    required this.marka,
    required this.hp,
    required this.koltukSayisi,
    required this.sportMode,
  });
}

class ArabaYonetimi {
  Map<String, Arabalar> aracDetaylari = {};

  // Yeni araç ekleme
  void aracEkle(
    String marka,
    String model,
    String hp,
    String koltukSayisi,
    bool sportMode,
  ) {
    aracDetaylari[marka] = Arabalar(
      marka: marka,
      hp: hp,
      koltukSayisi: koltukSayisi,
      sportMode: sportMode,
    );
    print("Yeni araç eklendi: Marka: ${aracDetaylari[marka]!.marka}");
  }

  // Aracı silme
  void aracSil(String marka) {
    if (aracDetaylari.containsKey(marka)) {
      var silinenArac = aracDetaylari.remove(marka);
      print("Silinen araç: Marka: ${silinenArac?.marka}");
    } else {
      print("Hata: $marka böyle bir araç bulunamadi.");
    }
    return araclariListele();
  }
  // araclari guncelle
  void AracGuncelle(String marka,String yeniMarka,String yeniHp,String yeniKoltukSayisi,bool yeniSportMode){

    if(aracDetaylari.containsKey(marka)){
      aracDetaylari[marka] = Arabalar(
        marka: yeniMarka,
        hp: yeniHp,
        koltukSayisi: yeniKoltukSayisi,
        sportMode:yeniSportMode);

        print("Arac Guncellendi : Marka : ${aracDetaylari[marka]!.marka}," );

    }else{
      print("Boyle bir Arac Bulunamadi");
    }
    
  }

  // Tüm araçları listeleme
  void araclariListele() {
    if (aracDetaylari.isEmpty) {
      print("Listede hiç araç yok.");
    } else {
      print("Mevcut araçlar:");
      aracDetaylari.forEach((marka, araba) {
        print("Marka: ${araba.marka}, HP: ${araba.hp}, Koltuk Sayisi : ${araba.koltukSayisi}, Sport mode : ${araba.sportMode}");
      });
    }
  }
}

void main() {
  ArabaYonetimi arabaYonetimi = ArabaYonetimi();

   // Araç ekleme
  
  arabaYonetimi.aracEkle("BMW", "BMW M5", "150", "4", true);
  arabaYonetimi.aracEkle("Toyota", "Toyota", "110", "5", false);

  // Tüm araçları listeleme
  arabaYonetimi.araclariListele();

  // Araç silme
  //arabaYonetimi.aracSil("BMW");

  // Araçları tekrar listeleme
 // arabaYonetimi.araclariListele();

 // Araç güncelleme
 arabaYonetimi.AracGuncelle("BMW", "BMW M5", "200", "4", true);
 arabaYonetimi.araclariListele();




  while(true){
    print("\n---- Araba Satiş Menüsü ----");
    print("1. Araçlari Listele");
    print("2. Araç Fiyatini Göster");
    print("3. Araç Satin Al");
    print("4. Çikiş");

    print("Seçiminizi yapiniz: ");
    String? secim = stdin.readLineSync();

    switch(secim){
      case "1":
      arabaYonetimi.araclariListele();
      break;

      case "4":
      return;
    }


  }

}