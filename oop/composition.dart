class Klavye{
  String tip;
  
  Klavye({required this.tip});

  void yaz() => print("bu bir $tip klavyedir");
}

class Fare{
  String renk;

  Fare({required this.renk});

  void tikla() => print("$renk fare tiklandi");
}

class Bilgisayar{

  Klavye klavye;
  Fare fare;

  Bilgisayar({required this. klavye, required this.fare});

  void Calistir(){
    klavye.yaz();
    fare.tikla();
  }

}

void main(List<String> args) {
  Klavye klavye = Klavye(tip: "Mekanik");
  Fare fare = Fare(renk: "Siyah");
  Bilgisayar bilgisayar = Bilgisayar(klavye: klavye, fare: fare);

  bilgisayar.Calistir();
}