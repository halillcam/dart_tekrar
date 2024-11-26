
class Cars {

int hp = 0,KoltukSayisi = 0;
bool SportMode = false;

List <String> car = ["Bwm","Toyota","Wolkswagen",];

void Araclarim(){
  for(int i =0; i<car.length; i++){
    print("${i+1} . ${car[i]}");
  }

}

void arabaEkle(String ekle){
    car.add(ekle);
    print("Eklenen arac : ${car.last}");
    print("Listedeki toplam eleman Sayisi : ${car.length}");
}


void arabaSecim(int secim){
    switch (secim){
        case 0 :
            print("Secilen arac = ${car[0]}, Hp : ${hp = 150}, Koltuk sayisi:${KoltukSayisi = 2} , Sport mode ${SportMode = true}: var ");
            
            break;
        
        case 1 :
              print("Secilen arac = ${car[1]}, Hp : ${hp = 110}, Koltuk sayisi:${KoltukSayisi = 4} , Sport mode ${SportMode = false}: yok ");
            break;
        
        case 2 : 
             print("Secilen arac = ${car[2]}, Hp : ${hp = 120}, Koltuk sayisi:${KoltukSayisi = 4} , Sport mode ${SportMode = false}: yok ");
            break;
    }
}

}

void main(List<String> args) {
    Cars arabam = Cars();
    //bmw
   /* arabam.arabaSecim(0);

    //Toyota
    arabam.arabaSecim(1);

    //Wolkswagen

    arabam.arabaSecim(2);*/

    arabam.arabaEkle("Suzuki");
    arabam.Araclarim();
    
}
