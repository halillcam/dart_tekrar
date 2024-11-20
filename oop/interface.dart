/*
Interface, bir sınıfa belirli yetenekler eklemek için kullanılır. 
Bir sınıf birden fazla interface’i implement edebilir (uygulayabilir). 
Interface'ler yalnızca metodun adını ve imzasını tanımlar, gerçek uygulama alt sınıflarda yapılır.

----------------------------------------------------
Günlük Hayattan Örnek:
Diyelim ki bir cihazın şarj edilebilme özelliği var:

Telefon, elektrikli süpürge ve elektrikli araba gibi cihazların hepsi şarj edilebilir.
Ancak, her cihazın şarj edilme yöntemi farklıdır (telefon USB kablosuyla, araba şarj istasyonuyla).
Burada şarj edilebilirlik (interface) bir "özellik" olur ve bu özellik farklı cihazlarda farklı şekilde uygulanır.

*/
abstract class SarjEdilebilir{
  void SarjEt();
}
class Telefon implements SarjEdilebilir{
  @override
  void SarjEt() {
    print("Telefon usb ile sarj edilebilir");
  }

}
class araba implements SarjEdilebilir{
  @override
  void SarjEt() {
    print("Araç istasyonda sarj edilebilir");
  }
}
void main(List<String> args) {
  Telefon xiaomi = Telefon();
  xiaomi.SarjEt();
  
  araba Tesla = araba();
  Tesla.SarjEt();
}
