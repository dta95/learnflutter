import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// lớp trừ tượng tượng lopHoc
abstract class lopHoc{
  late String tenLopHoc;
  late int soHocVien;
  late List<String> DSHV;
}
//khởi tạo lớp hocVien
 class hocVien{
   String ten;
   List <String> tenLopHoc;
  hocVien(this.ten, this.tenLopHoc);
}
// lớp trừ tượng build app
abstract class buildAdroid{
   void buildAdroidApp(){}
}
abstract class buildIos{
  void buildIosApp(){}
}
abstract class buildWeb{
  void buildWebApp(){}
}
abstract class buildDKApp{
  void buildDKAppp(){}
}

// Khởi tạo lớp flutter
class Flutter implements lopHoc,buildAdroid,buildIos,buildWeb,buildDKApp {
  @override
  int soHocVien =11;
  @override
  String tenLopHoc = "Flutter";
  @override
  List<String> DSHV =[];

  @override
  void buildAdroidApp() {}
  @override
  void buildDKAppp() {}
  @override
  void buildIosApp() {}
  @override
  void buildWebApp() {}

}
//khởi tạo lớp ios
class ios implements lopHoc,buildIos{
  @override
  int soHocVien =13;
  @override
  String tenLopHoc = "ios";
  @override
  List<String> DSHV =[];
  @override
  void buildIosApp(){}

}
//khởi tạo lớp adroid
class adroid implements lopHoc,buildAdroid{
  @override
  int soHocVien =12;

  @override
  String tenLopHoc = "adroid";

  @override
  List<String> DSHV =[];

  @override
  void buildAdroidApp() {}

}

//Khởi tạo lớp web
class web implements lopHoc,buildWeb{
  @override
  int soHocVien =14;

  @override
  String tenLopHoc = "web";

  @override
  List<String> DSHV =[];

  @override
  void buildWebApp() {}

}

// random tên cho hv
String RandomNameHV(String tapTen) {
  var r = Random();
  return List.generate(1, (index) => tapTen[r.nextInt(tapTen.length)]).join();
}
// kiểm tra tên học viên trước khi thêm
String KTTHV(List a,String c){
  for(int i=0;i <a.length;i++){
       c = c.replaceAll(a[i], "");
  }
  return c;
}
// hàm kiểm tra học viên trong tệp và thêm hv vào lớp
void KTHV(Map a, List b, String c){
  var key;
  List l = a.values.toList();
  for(int i=0;i<l.length;i++){
    for(int j=0;j< l[i].length;j++){
      if(l[i][j] == c){
        key = a.keys.firstWhere((k) => a[k] == l[i]);
        b.add(key);
      }
    }
  }
}
// hàm add thành viên cho lớp
List addHV(int a,String tapTen,List ds){
  String newTenTep = KTTHV(ds,tapTen);
  for(int i=1;i<= a ;i++ ){
    var t=RandomNameHV(newTenTep);
    ds.add(t);
    newTenTep = newTenTep.replaceAll(t, "");
  }
  return ds;
}

int remainMembers(Map a, int b, String c){
  int tinhSHV= 0;
  List l = a.values.toList();
  for(int i=0;i<l.length;i++){
    for(int j=0;j< l[i].length;j++){
      if(l[i][j] == c){
        tinhSHV++;
      }
    }
  }
  tinhSHV = b -tinhSHV;
  return tinhSHV;
}

void main() {
  // khởi tạo đối tượng lớp
  Flutter classFlutter = new Flutter();
  ios classIos = new ios();
  adroid classAdroid = new adroid();
  web classWeb = new web();

  // khỏi tạo đối tượng học viên
  hocVien A = new hocVien('A', ['Flutter']);
  hocVien B = new hocVien('B', ['Flutter', 'adroid']);
  hocVien C = new hocVien('C', ['adroid']);
  hocVien D = new hocVien('D', ['adroid', 'ios']);
  hocVien E = new hocVien('E', ['ios']);
  hocVien F = new hocVien('F', ['ios', 'web']);

  // khởi tạo danh sách học viên
  Map hocvien = {
    A.ten: A.tenLopHoc,
    B.ten: B.tenLopHoc,
    C.ten: C.tenLopHoc,
    D.ten: D.tenLopHoc,
    E.ten: E.tenLopHoc,
    F.ten: F.tenLopHoc,
  };
  //khởi tạo tập tên hv
  String rdthv= "QWERTYUIOPASDFGHJKLZXCVBNM";

  // thêm học viên vào lớp
  KTHV(hocvien, classFlutter.DSHV, "Flutter");
  KTHV(hocvien, classIos.DSHV, "ios");
  KTHV(hocvien, classAdroid.DSHV, "adroid");
  KTHV(hocvien, classWeb.DSHV, "web");

  // gán số hs còn tiếu
  var  hstFlutter =  remainMembers(hocvien,classFlutter.soHocVien,classFlutter.tenLopHoc);
  var  hstAdroid =  remainMembers(hocvien,classAdroid.soHocVien,classAdroid.tenLopHoc);
  var  hstIos =  remainMembers(hocvien,classIos.soHocVien,classIos.tenLopHoc);
  var  hstWeb =  remainMembers(hocvien,classWeb.soHocVien,classWeb.tenLopHoc);


  print("Số học viên còn thiếu lớp Flutter: $hstFlutter");
  print("Số học viên còn thiếu lớp Adroid: $hstAdroid");
  print("Số học viên còn thiếu lớp Ios: $hstIos");
  print("Số học viên còn thiếu lớp Web: $hstWeb");

  //add thành viên lớp
  addHV(hstFlutter,rdthv,classFlutter.DSHV);
  addHV(hstAdroid,rdthv,classAdroid.DSHV);
  addHV(hstIos,rdthv,classIos.DSHV);
  addHV(hstWeb,rdthv,classWeb.DSHV);

  //in danh sách học viên của lớp
    print("Danh sách học viên Flutter:\n ${classFlutter.DSHV}");
    print("Danh sách học viên Adroid:\n ${classAdroid.DSHV}");
    print("Danh sách học viên Ios:\n ${classIos.DSHV}");
    print("Danh sách học viên Web:\n ${classWeb.DSHV}");
}
