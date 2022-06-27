import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// lớp trừ tượng tượng lopHoc
abstract class lopHoc{
  late String tenLopHoc;
  late int soHocVien;
  late List<String> DSHV;

  lopHoc(this.tenLopHoc,this.soHocVien, this.DSHV);

  int remainMembers(){
    return  soHocVien - DSHV.length;
  }
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
class Flutter extends lopHoc implements buildAdroid,buildIos,buildWeb,buildDKApp {
  Flutter(super.tenLopHoc, super.soHocVien, super.DSHV);

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
class ios extends lopHoc implements buildIos{

  ios(super.tenLopHoc, super.soHocVien, super.DSHV);
  @override
  void buildIosApp(){}

}
//khởi tạo lớp adroid
class adroid extends lopHoc implements buildAdroid{

  adroid(super.tenLopHoc, super.soHocVien, super.DSHV);

  @override
  void buildAdroidApp() {}

}

//Khởi tạo lớp web
class web extends lopHoc implements buildWeb{
  web(super.tenLopHoc, super.soHocVien, super.DSHV);

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

void main() {
  // khởi tạo đối tượng lớp
  Flutter classFlutter = new Flutter("Flutter",11,["A","B"]);
  ios classIos = new ios("ios",13,["D","E","F"]);
  adroid classAdroid = new adroid("adroid",12,["B","C","D"]);
  web classWeb = new web("web",14,["F"]);

  print("${classFlutter.remainMembers()}");
  print("${classIos.remainMembers()}");
  print("${classAdroid.remainMembers()}");
  print("${classWeb.remainMembers()}");

  //khởi tạo tập tên hv
  String rdthv= "QWERTYUIOPASDFGHJKLZXCVBNM";

  addHV(classFlutter.remainMembers(),rdthv,classFlutter.DSHV);
  addHV(classAdroid.remainMembers(),rdthv,classAdroid.DSHV);
  addHV(classIos.remainMembers(),rdthv,classIos.DSHV);
  addHV(classWeb.remainMembers(),rdthv,classWeb.DSHV);

  //in danh sách học viên của lớp
  print("Danh sách học viên Flutter:\n ${classFlutter.DSHV}");
  print("Danh sách học viên Adroid:\n ${classAdroid.DSHV}");
  print("Danh sách học viên Ios:\n ${classIos.DSHV}");
  print("Danh sách học viên Web:\n ${classWeb.DSHV}");
}
