void main() {
  int hesapBakiyesi = 1000;

  try {
    int cekilecekMiktar = 1500;
    if (cekilecekMiktar > hesapBakiyesi) {
      throw "Yetersiz bakiye! Hesabinizdaki para = $hesapBakiyesi TL Çekmek istediğiniz miktar: $cekilecekMiktar TL";
    }
    hesapBakiyesi -= cekilecekMiktar;
    print("Para çekildi! Kalan bakiye: $hesapBakiyesi TL");
  } catch (e) {
    print("Bir hata oluştu: $e");
  }
  finally{
    print("Ben her türlü çalisirim aga");
  }
}