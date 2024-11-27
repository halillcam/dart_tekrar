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
    String anahtar,
    String marka,
    String hp,
    String koltukSayisi,
    bool sportMode,
  ) {
    aracDetaylari[anahtar] = Arabalar(
      marka: marka,
      hp: hp,
      koltukSayisi: koltukSayisi,
      sportMode: sportMode,
    );
    print("Yeni araç eklendi: Marka: ${aracDetaylari[anahtar]!.marka}");
  }

  // Aracı silme
  void aracSil(String anahtar) {
    if (aracDetaylari.containsKey(anahtar)) {
      var silinenArac = aracDetaylari.remove(anahtar);
      print("Silinen araç: Marka: ${silinenArac?.marka}");
    } else {
      print("Hata: $anahtar böyle bir araç bulunamadi.");
    }
    return araclariListele();
  }

  // Tüm araçları listeleme
  void araclariListele() {
    if (aracDetaylari.isEmpty) {
      print("Listede hiç araç yok.");
    } else {
      print("Mevcut araçlar:");
      aracDetaylari.forEach((anahtar, araba) {
        print("Marka: ${araba.marka}, HP: ${araba.hp}, Koltuk Sayisi : ${araba.koltukSayisi}, Sport mode : ${araba.sportMode}");
      });
    }
  }
}

void main() {
  ArabaYonetimi arabaYonetimi = ArabaYonetimi();

  // Araç ekleme
  
  arabaYonetimi.aracEkle("BMW", "BMW", "150", "4", true);
  arabaYonetimi.aracEkle("Toyota", "Toyota", "110", "5", false);

  // Tüm araçları listeleme
  arabaYonetimi.araclariListele();

  // Araç silme
  arabaYonetimi.aracSil("dsafds");

  // Araçları tekrar listeleme
 // arabaYonetimi.araclariListele();
}