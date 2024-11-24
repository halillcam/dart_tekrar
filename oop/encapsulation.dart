/*
Encapsulation Nedir?
Encapsulation, verileri koruma altına alma yöntemidir.
Bir sınıfta bulunan özelliklerin doğrudan dışarıdan değiştirilmesini istemezsin. 
Bunun yerine, bu özelliklere sadece belirli kurallarla erişilmesini sağlarsın.


Getter ve Setter Nedir?
Getter: Bir özelliğin değerini okumak için kullanılır.
Setter: Bir özelliğin değerini değiştirmek için kullanılır.

*/
class Ogrenci {
  int _not = 0;

  // Getter
  int get not => _not;

  // Setter
  void set not(int deger) {
    if (deger >= 0 && deger <= 100) {
      _not = deger;
    } else {
      print("Geçersiz not! Not 0 ile 100 arasinda olmali.");
    }
  }
}

void main() {
  Ogrenci ali = Ogrenci();

  ali.not = 85; // Setter ile not belirliyoruz
  print("Ali'nin notu: ${ali.not}"); // Getter ile notu öğreniyoruz

  ali.not = 150; // Geçersiz not
}