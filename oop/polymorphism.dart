/* Polymorphism nedir?

  Inheritance yapılan sınıftaki methodları ve özellikleri istediğimiz gibi değiştirerek kullanmaktır.

*/

class Hayvan {
  void SesCikar() {
    print("Hayvanın bir sesi var.");
  }

  void kacAyak() {
    print("Bu hayvanın kaç ayağı olduğu belirtilmemiş.");
  }
}

class Kedi extends Hayvan {
  @override
  void SesCikar() {
    print("Kedinin sesi: Miyav");
  }

  @override
  void kacAyak() {
    print("Kediler genelde 4 ayaklıdır.");
  }
}

class Kus extends Hayvan {
  @override
  void SesCikar() {
    print("Kuşun sesi: Cik cik");
  }

  @override
  void kacAyak() {
    print("Kuşlar genelde 2 ayaklıdır ve uçabilirler.");
  }
}

void main(List<String> args) {
  Hayvan pusuk = Kedi(); // Polimorfizm burada devrede!
  pusuk.SesCikar(); // Çıktı: Kedinin sesi: Miyav
  pusuk.kacAyak();  // Çıktı: Kediler genelde 4 ayaklıdır.

  Hayvan fenerbahce = Kus();
  fenerbahce.SesCikar(); // Çıktı: Kuşun sesi: Cik cik
  fenerbahce.kacAyak();  // Çıktı: Kuşlar genelde 2 ayaklıdır ve uçabilirler.
}