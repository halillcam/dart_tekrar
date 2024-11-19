//Kalitim

class Inhteritence {
  String marka,model;
  int teker,hp,kapi;

  Inhteritence({required this.marka,required this.model,required this.teker, required this.hp, required this.kapi}){

    void AracBilgileri(){
      print("------------ Arac Bilgileri --------------");
      print("Marka : $marka, Model : $model, Kac Beygir : $hp , Teker sayisi : $teker, Kapi sayisi :  $kapi");
    }
    AracBilgileri();
  }

}
class bmw extends Inhteritence{
  bool supermode;

  bmw({required String marka,required String model, required int hp , required int teker, required int kapi, required this.supermode}) 
  : super (marka: marka,model: model,hp: hp,teker: teker,kapi: kapi){

    if(supermode){
      print("Arac super mode a sahip");
    }
    else{
      print("bu aracta super mode yok");
    }
  }

}
void main(List<String> args) {
  bmw m5 = bmw(marka: "bmw", model: "2024", hp: 170, teker: 4, kapi: 4, supermode: true);
  m5;
}