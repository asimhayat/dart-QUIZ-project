import 'dart:io';
 class Quizpy
{
  quiz2(){
 

    var questions = [
    [
      "Which language was used to create Facebook?",
      "Python",
      "French",
      "JavaScript",
      "Php",
      4
    ],
    [
    "What is the keyword used to define a function in Dart?",
    "func",
    "def",
    "function",
    "void",
    4
  ],
  [
    "Which data type is used to represent integers in Dart?",
    "int",
    "float",
    "double",
    "var",
    1
  ],
  [
    "How do you declare a list in Dart?",
    "list[]",
    "List()",
    "array()",
    "List<>()",
    2
  ],

  [
    "What is the default value of a variable in Dart if no initial value is provided?",
    "0",
    "null",
    "undefined",
    "false",
    2
  ],

  [
    "What is the purpose of the 'break' statement in Dart?",
    "To exit a loop or switch statement.",
    "To jump to the next iteration of a loop.",
    "To define the default case in a switch statement.",
    "To signal the end of a method.",
    1
  ],


[
    "What is the default value of a boolean variable in Dart?",
    "true",
    "false",
    "null",
    "0",
    2
  ],

[
    "In Dart, how do you import a library?",
    "import <library_name>;",
    "use <library_name>;",
    "import '<library_name>';",
    "use '<library_name>';",
    1
  ],

[
    "What is the primary data structure used to store key-value pairs in Dart?",
    "List",
    "Array",
    "Map",
    "Set",
    3
  ],  


[
    "What is the purpose of the 'const' keyword in Dart?",
    "To declare a constant variable.",
    "To define a class as immutable.",
    "To indicate a block of code that cannot be modified.",
    "To create a new instance of a class.",
    1
  ]




  ];

  List points = [];



  for (var i = 0; i < questions.length; i++) {
    var question = questions[i];
    printblue("\n\n                            **Question number ${i+1}**");
    print("                Q${i+1} ${question[0]}");
    print("                     |1.${question[1]}|------|2.${question[2]}|");
    print("                     |3.${question[3]}|------|4.${question[4]}|");
    stdout.write("\n Enter your Answer (1-4):");
    int reply = int.parse(stdin.readLineSync() ?? '');
    if (reply == question.last) {
      printgreen("Correct answer");
      points.add(1);
    } else {
      printred("Wrong answer");
      points.add(0);

      print("Right answer is Option :  ${question[5]}");
    }
  }
  

  int zeros = 0;
  int ones = 0;

  for (int i in points) {
    if (i == 0) {
      zeros++;
    } else if (i == 1) {
      ones++;
    }
  }


  printblue("\n\nRESULT");
  printgreen('Right Answers: $ones');
  printred('Wrong Answers: $zeros');
  







}

}



  void printred(String text) {
    print('\x1B[31m$text\x1B[0m');
  }
  void printgreen(String text) {
    print('\x1B[32m$text\x1B[0m');
  }

  void printblue(String text) {
    print('\x1B[34m$text\x1B[0m');
  }
