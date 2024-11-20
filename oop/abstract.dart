/*
Abstract sınıflar bir şablon gibidir. İçinde hem tanımlanmış (normal) hem de tanımlanmamış (soyut) metotlar bulunabilir.
Abstract sınıflar doğrudan nesne oluşturmak için kullanılmaz; onları kalıtım yoluyla başka sınıflarda uygularız.
*/

abstract class Araba {
  String model;
  int kapiSayisi;
  String stokRenk;

  // Abstract sınıfın constructor'ı
  Araba(this.model, this.kapiSayisi, this.stokRenk);

  // Abstract method
  void uretimDetaylari();
}

class BMW extends Araba {
  String renk;

  BMW({required String model, required int kapiSayisi, required String stokRenk, required this.renk})
      : super(model, kapiSayisi, stokRenk);

  @override
  void uretimDetaylari() {
    print("Model: $model, Kapı Sayısı: $kapiSayisi, Renk: $renk (Stok Renk: $stokRenk)");
  }
}

void main() {
  BMW bmw2025 = BMW(model: "2025", kapiSayisi: 2, stokRenk: "Beyaz", renk: "Kırmızı");
  bmw2025.uretimDetaylari();
}