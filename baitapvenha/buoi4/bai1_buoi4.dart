import 'package:flutter/material.dart';
import 'dart:math';

class hinhTron{

 static int? banKinh = null;
 static const double pi = 3.14;
}

//Tinh giai thua 6
int tinhGiaiThua(int n){
  int giaithua = 1;
  for(int i=1;i<=n;i++){
    giaithua = giaithua*i;
  }
  return giaithua;
}

// hàm chuyển toInt
int? changeToInt(var a){
    var atype = "${a.runtimeType}";
    if(atype== "String"){
      return null;
    } else
      if(atype == "double"){
       return  a.toInt();
      } else{
        return a;
      }
}

// hàm chuyển toString
String? changeToString(var a){
    return  a.toString();
}

// hàm chuyển toDouble
double? changeToDouble(var a){
  var atype = "${a.runtimeType}";
  if(atype== "String"){
    return null;
  } else
  if(atype == "int"){
    return  a.toDouble() +0.05;
  } else{
    return a;
  }
}

void main() {
 // runApp(const MyApp());

 // khai bao biến
 late int a = 10;
 final String b = "10";
  const double c = 10.1;
 String? bCanBeNull = null;
 int? aCanBeNull = null;
 double? cCanBeNull=null;


 print("Giai thừa của 6 là: ${tinhGiaiThua(6)}");

 print(changeToInt(a));
 print(changeToInt(b));
 print(changeToInt(c));

 print(changeToString(a));
 print(changeToString(b));
 print(changeToString(c));

 print(changeToDouble(a));
 print(changeToDouble(b));
 print(changeToDouble(c));

 print(changeToInt(aCanBeNull));
