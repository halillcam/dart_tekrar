// Kalıtım

class Inheritance {
  String marka, model;
  int teker, hp, kapi;

  Inheritance({
    required this.marka,
    required this.model,
    required this.teker,
    required this.hp,
    required this.kapi,
  });

  void AracBilgileri() {
    print("------------ Araç Bilgileri --------------");
    print("Marka : $marka, Model : $model, Kaç Beygir : $hp , Teker Sayısı : $teker, Kapı Sayısı : $kapi");
  }
}

class BMW extends Inheritance {
  bool supermode;

  BMW({
    required String marka,
    required String model,
    required int hp,
    required int teker,
    required int kapi,
    required this.supermode,
  }) : super(marka: marka, model: model, hp: hp, teker: teker, kapi: kapi);

  @override
  void AracBilgileri() {
    super.AracBilgileri();
    if (supermode) {
      print("Araç süper moda sahip.");
    } else {
      print("Bu araçta süper mod yok.");
    }
  }
}

void main(List<String> args) {
  BMW m5 = BMW(marka: "BMW", model: "M5 2024", hp: 170, teker: 4, kapi: 4, supermode: true);
  m5.AracBilgileri();
}