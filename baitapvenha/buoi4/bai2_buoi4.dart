import 'package:flutter/material.dart';
import 'dart:math';

//in số lẻ
void inSoLe(List<int> a){
    var listLengt= a.length;
    for(int i=0;i<listLengt;i++){
      if(i%2==1){
       print(i);
      }
    }
}

// in số chẵn

void inSoChan(List<int>a){
  var listLengt= a.length;
  for(int i=0;i<listLengt;i++){
    if(i%2==0){
      print(i);
    }
  }
}

// Kiểm tra 0 là chẵn hay lẻ?

void kiemTraChanLe(var a){
  if(a>=0 && a%2==0){
    print("Số $a là số chẵn");
  }else
    if(a>=0 && a%2==1){
      print("Số $a là số lẻ");
    }
}

void main() {
 // runApp(const MyApp());

 var list = [for(var i=0; i<=100; i++) i];
inSoLe(list);
inSoChan(list);
kiemTraChanLe(0);
}