import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// lớp trừ tượng tượng lopHoc
abstract class lopHoc{
  late String tenLopHoc;
  late int soHocVien;
  late List<String> DSHV;

  int remainMembers( Map a ){
  return 0;
  }
}
//khởi tạo lớp hocVien
 class hocVien{
   String ten;
   List <String> tenLopHoc;
  hocVien(this.ten, this.tenLopHoc);
}

abstract class buildAdroid{
   void buildAdroidApp(){}
}
abstract class buildIos{
  void buildIosApp(){}
}
abstract class buildWed{
  void buildWedApp(){}
}
abstract class buildDKApp{
  void buildDKAppp(){}
}

// Khởi tạo lớp flutter
class Flutter implements lopHoc,buildAdroid,buildIos,buildWed,buildDKApp {
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
  void buildWedApp() {}

  @override
  int remainMembers(Map a){
    int tinhSHV= 0;
    List l = a.values.toList();
    for(int i=0;i<l.length;i++){
      for(int j=0;j< l[i].length;j++){
        if(l[i][j] == "Fluter"){
          tinhSHV++;
        }
      }
    }
    tinhSHV =soHocVien -tinhSHV;
   return tinhSHV;
  }

  List addHV(int a,String tapTen){
    String newTenTep = KTTHV(DSHV,tapTen);
    for(int i=1;i<= a ;i++ ){
      var t=RandomNameHV(newTenTep);
      DSHV.add(t);
      newTenTep = newTenTep.replaceAll(t, "");
    }
    return  DSHV;
  }

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


  @override
  int remainMembers(Map a){
    int tinhSHV= 0;
    List l = a.values.toList();
    for(int i=0;i<l.length;i++){
      for(int j=0;j< l[i].length;j++){
        if(l[i][j] == "ios"){
          tinhSHV++;
        }
      }
    }
    tinhSHV =soHocVien -tinhSHV;
   return tinhSHV;
  }
  List addHV(int a,String tapTen){
    String newTenTep = KTTHV(DSHV,tapTen);
    for(int i=1;i<= a ;i++ ){
      var t=RandomNameHV(newTenTep);
      DSHV.add(t);
      newTenTep = newTenTep.replaceAll(t, "");
    }
    return  DSHV;
  }
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


  @override
  int remainMembers(Map a){
    int tinhSHV= 0;
    List l = a.values.toList();
    for(int i=0;i<l.length;i++){
      for(int j=0;j< l[i].length;j++){
        if(l[i][j] == "adroid"){
          tinhSHV++;
        }
      }
    }
    tinhSHV =soHocVien -tinhSHV;
    return tinhSHV;
  }

  List addHV(int a,String tapTen){
    String newTenTep = KTTHV(DSHV,tapTen);
    for(int i=1;i<= a ;i++ ){
      var t=RandomNameHV(newTenTep);
      DSHV.add(t);
      newTenTep = newTenTep.replaceAll(t, "");
    }
    return  DSHV;
  }
}
//Khởi tạo lớp web
class web implements lopHoc,buildWed{
  @override
  int soHocVien =14;

  @override
  String tenLopHoc = "web";

  @override
  List<String> DSHV =[];

  @override
  void buildWedApp() {}


  @override
  int remainMembers(Map a){
    int tinhSHV= 0;
    List l = a.values.toList();
    for(int i=0;i<l.length;i++){
      for(int j=0;j< l[i].length;j++){
        if(l[i][j] == "wed"){
          tinhSHV++;
        }
      }
    }
    tinhSHV =soHocVien -tinhSHV;
   return tinhSHV;
  }

  List addHV(int a,String tapTen){
    String newTenTep = KTTHV(DSHV,tapTen);
    for(int i=1;i<= a ;i++ ){
      var t=RandomNameHV(newTenTep);
      DSHV.add(t);
      newTenTep = newTenTep.replaceAll(t, "");
    }
    return  DSHV;
  }

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


// hàm kiểm tra học viên và thêm hv vào lớp

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

void main() {
  // runApp(const MyApp());
  // khởi tạo đối tượng lớp
  Flutter classFlutter = new Flutter();
  ios classIos = new ios();
  adroid classAdroid = new adroid();
  web classWed = new web();

  // khỏi tạo đối tượng học viên
  hocVien A = new hocVien('A', ['Fluter']);
  hocVien B = new hocVien('B', ['Fluter', 'adroid']);
  hocVien C = new hocVien('C', ['adroid']);
  hocVien D = new hocVien('D', ['adroid', 'ios']);
  hocVien E = new hocVien('E', ['ios']);
  hocVien F = new hocVien('F', ['ios', 'wed']);

// khởi tạo danh sách học viên
  Map hocvien = {
    A.ten: A.tenLopHoc,
    B.ten: B.tenLopHoc,
    C.ten: C.tenLopHoc,
    D.ten: D.tenLopHoc,
    E.ten: E.tenLopHoc,
    F.ten: F.tenLopHoc,
  };
//  khởi tạo tập tên hv
  String rdthv= "QWERTYUIOPASDFGHJKLZXCVBNM";
  // thêm học viên vào lớp

  KTHV(hocvien, classFlutter.DSHV, "Fluter");
  KTHV(hocvien, classIos.DSHV, "ios");
  KTHV(hocvien, classAdroid.DSHV, "adroid");
  KTHV(hocvien, classWed.DSHV, "wed");


  // kiếm tra số học viên còn thiếu
  print("Số học viên còn thiếu lớp Flutter: ${classFlutter.remainMembers(hocvien)} ");
  print("Số học viên còn thiếu lớp ios: ${classIos.remainMembers(hocvien)} ");
  print("Số học viên còn thiếu lớp adroid: ${  classAdroid.remainMembers(hocvien)} ");
  print("Số học viên còn thiếu lớp wed: ${classWed.remainMembers(hocvien)} ");



//in danh sách học viên của lớp
  print( "Danh sách học viên Flutter:\n ${ classFlutter.addHV(classFlutter.remainMembers(hocvien),rdthv)}"  );
  print( "Danh sách học viên Ios:\n ${ classIos.addHV(classIos.remainMembers(hocvien),rdthv)}");
  print( "Danh sách học viên Adroid:\n ${ classAdroid.addHV(classAdroid.remainMembers(hocvien),rdthv)}" );
  print( "Danh sách học viên Wed:\n ${ classWed.addHV(classWed.remainMembers(hocvien),rdthv)}" );



}
