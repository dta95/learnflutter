bool KTSNT(int x) {
  if(x<2) {
    return false;
  } else {
    for (int i = 2; i <= x / 2; i++) {
      if (x % i == 0) {
        return false;
      }
    }
  }
  return true;
}
void inSoNguyenTo(int n){
    List? snt = [];
    for(int i=0;i<=n; i++){
       if(KTSNT(i)==true){
          snt.add(i);
        }
    }
    print(snt);
}
void main() {
 // runApp(const MyApp());

  inSoNguyenTo(20);
  inSoNguyenTo(100);
  inSoNguyenTo(1000);
}
