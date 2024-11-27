class Arabalar {
  String marka;
  String hp;
  String koltukSayisi;
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

  void aracEkle(String anahtar, String marka, String hp, String koltukSayisi, bool sportMode) {
    // Yeni bir araç nesnesi oluştur ve Map'e ekle
    aracDetaylari[anahtar] = Arabalar(
      marka: marka,
      hp: hp,
      koltukSayisi: koltukSayisi,
      sportMode: sportMode,
    );
    // Eklenen aracı göster
    print("Yeni araç eklendi: Marka: ${aracDetaylari[anahtar]!.marka}, HP: ${aracDetaylari[anahtar]!.hp}, "
        "Koltuk Sayısı: ${aracDetaylari[anahtar]!.koltukSayisi}, Sport Mode: ${aracDetaylari[anahtar]!.sportMode}");
  }

  void mevcutAraclariGoster() {
    if (aracDetaylari.isEmpty) {
      print("Henüz eklenmiş bir araç yok.");
      return;
    }
    print("Mevcut araçlar:");
    aracDetaylari.forEach((key, value) {
      print("Marka: ${value.marka}, HP: ${value.hp}, Koltuk Sayısı: ${value.koltukSayisi}, Sport Mode: ${value.sportMode}");
    });
  }
}

void main() {
  var arabaYonetimi = ArabaYonetimi();

  // Yeni araç ekleme
  arabaYonetimi.aracEkle("BMW", "BMW", "150", "4", true);
  arabaYonetimi.aracEkle("Toyota", "Toyota", "110", "4", false);

  // Mevcut araçları gösterme
 // arabaYonetimi.mevcutAraclariGoster();

  // Yeni bir araç daha ekleyelim
  arabaYonetimi.aracEkle("Audi", "Audi", "180", "2", true);

  // Güncellenmiş araç listesi
  arabaYonetimi.mevcutAraclariGoster();

}