class ConstructorTekrar{
  // Personellerin isimlerini yaşlarını ve pozisyonlarını tutsun ve bunları ekrana yazdırsın.

  String isim,pozisyon;
  int yas,iseGiris;

  ConstructorTekrar({required this.isim,required this.pozisyon,required this.yas,required this.iseGiris}){
    print("Personel ismi : $isim, Pozisyonu : $pozisyon, yasi : $yas");
     void KacYillikisci(){
      
      if(iseGiris > 2024){
        print("İse giris 2024 yilindan fazla olamaz");
      }
      else{
        int sonuc = 2024 - iseGiris;
      print("Eleman $sonuc yildir isci");

      }
    }
    
    KacYillikisci();
    
  }
 
  
}
void main(List<String> args) {
  ConstructorTekrar personel = ConstructorTekrar(isim: "Halil", pozisyon: "IT", yas: 24, iseGiris: 2023);
}