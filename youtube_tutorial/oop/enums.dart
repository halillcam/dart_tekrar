/* Sınıflandırma demektir
- Veriler sabitse ve bir değer almıyorsa enum yapısı list yerine kullanılabilir
- örneğin bir şehrin mahalleleri yada haftanın günleri gibi
*/

void main() {
  final customerMouse = Mouses.apple;
  print(customerMouse.index); // apple a eşitlediğimiz için apple ın id sini söyler aynı dizideki gibi ilk index her zaman [0] dan başlar
  print(customerMouse.name); // yine apple a eşitlediğimiz için apple ın ismini ekrana basar

  switch(customerMouse){

    case Mouses.magic:
     
    case Mouses.apple:
   
    case Mouses.logitech:
     
    case Mouses.rampage:
     
  }
}

enum Mouses {
magic,apple,logitech,rampage
}