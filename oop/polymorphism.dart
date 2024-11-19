/* Polymorphism nedir?

  Inheritance yapılan sınıftaki methodları ve özellikleri istediğimiz gibi değiştirerek kullanmaktır.

*/

class Hayvan {
  void SesCikar(String ses) {
    print("Hayvanın sesi: $ses");
  }

  void kacAyak(int ayakSayisi) {
    print("Bu hayvan $ayakSayisi ayaklı.");
  }
}

class Kedi extends Hayvan {
  @override
  void SesCikar(String ses) {
    print("Kedinin sesi: $ses");
  }

  @override
  void kacAyak(int ayakSayisi) {
    print("Kediler genelde $ayakSayisi ayaklıdır.");
  }
}

class Kus extends Hayvan {
  @override
  void SesCikar(String ses) {
    print("Kuşun sesi: $ses");
  }

  @override
  void kacAyak(int ayakSayisi) {
    print("Kuşlar genelde $ayakSayisi ayaklıdır ve uçabilirler.");
  }
}

void main(List<String> args) {
  Kedi pusuk = Kedi();
  pusuk.SesCikar("Miyav");
  pusuk.kacAyak(4);

  Kus fenerbahce = Kus();
  fenerbahce.SesCikar("Cik cik cik, kaç lo Galatasaray geldi");
  fenerbahce.kacAyak(2);
}