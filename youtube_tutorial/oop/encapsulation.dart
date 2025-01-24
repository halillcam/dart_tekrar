/*
public private, getter setter
- get ve set i private olan değişkenlerin değerlerini okumak ve kontrollü değiştirmek için kullanırız
*/

class Insan{
  String _adi;
  
  Insan(this._adi);
  
  // getter adini okumak için
  String get adi => _adi;

  //setter adi kontrollu degistirmek icin kullanırız

  set adi(String yeniAd){
    if(yeniAd.isNotEmpty){
      _adi = yeniAd;
    }
    else{
      print("ad bos birakilamaz");
    }
  }
}
void main(List<String> args) {
  Insan human = Insan("halil");

  // burada getter ile adini okuduk
  print(human.adi);

  human.adi = "";
  //print(human.adi);
}