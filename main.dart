import 'dart10mcq.dart';
import 'python10mcq.dart';
import 'c10mcq.dart';
import 'java10mcq.dart';
import 'dart:io';



void main() { 

  print("Select Subject using ABCD");
  print("A. PYTHON");
  print("B. DART");
  print("C. C");
  print("D. JAVA");

  var userinput = stdin.readLineSync();
  if(userinput=='A'||userinput=='a'){
  
  Quiz d = new Quiz();
  d.quiz1();

  }

  else if(userinput=='B'||userinput=='b'){
      
  Quizpy p = new Quizpy();
  p.quiz2();
  }

  else if(userinput=='C'||userinput=='c'){
      
  Quizc c = new Quizc();
  c.quiz3();

  }


  else if(userinput=='D'||userinput=='d'){
        
  Quizjava j = new Quizjava();
  j.quiz4();

  }


  else{
    print("PLEASE input ABCD");
  }











}









