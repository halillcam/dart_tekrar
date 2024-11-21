/*
Composition'un Temeli:

Bir sınıf (örneğin: Filmler), başka sınıfları (örneğin: Kategoriler ve Yönetmenler) içinde bir değişken olarak barındırır.
Bu sayede, bir sınıfın özelliklerini başka bir sınıfa ekleyebiliriz ve onları bu ana sınıfta kullanabiliriz.

Kategoriler sınıfı ve Yönetmenler sınıfı alt sınıflar olarak duruyor.
Filmler sınıfı ise bu sınıfları değişken gibi kullanarak birleştiriyor.
main metodunda Filmler sınıfından oluşturduğun nesne ile diğer iki sınıfın özelliklerine erişebilir.
*/



class Kategoriler {
  String kategori;
  
  Kategoriler(this.kategori);
}

class Yonetmenler {
  String yonetmen;
  
  Yonetmenler(this.yonetmen);
}

//composition sınıfı
class Filmler {
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler({required this.kategori, required this.yonetmen});
}

void main() {
  // Kategori ve Yönetmen nesneleri oluştur
  Kategoriler kategori = Kategoriler("Bilim Kurgu");
  Yonetmenler yonetmen = Yonetmenler("Christopher Nolan");

  // Filmler sınıfı üzerinden Composition yap
  Filmler film = Filmler(kategori: kategori, yonetmen: yonetmen);

  // Özellikleri yazdır
  print("Film Kategorisi: ${film.kategori.kategori}");
  print("Film Yönetmeni: ${film.yonetmen.yonetmen}");
}