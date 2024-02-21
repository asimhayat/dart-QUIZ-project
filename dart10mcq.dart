import 'dart:io';
 class Quiz
{
  quiz1(){

    var questions = [
  [
    "What is the syntax to print 'Hello, World!' in Python?",
    "print('Hello, World!')",
    "echo('Hello, World!')",
    "Console.WriteLine('Hello, World!')",
    "printf('Hello, World!')",
    1
  ],
  [
    "Which data type is used to store a sequence of characters in Python?",
    "int",
    "float",
    "str",
    "list",
    3
  ],
  [
    "What does the '==', '!=', '<', '>', '<=', and '>=' operators do in Python?",
    "Comparison operators",
    "Assignment operators",
    "Logical operators",
    "Bitwise operators",
    1
  ],
  [
    "What is the output of '2 ** 3' in Python?",
    "6",
    "8",
    "9",
    "16",
    4
  ],
  [
    "What is the purpose of the 'len()' function in Python?",
    "To convert a value to lowercase.",
    "To find the absolute value of a number.",
    "To get the length of a sequence.",
    "To concatenate two strings.",
    3
  ],
  [
    "What is the syntax to define a function in Python?",
    "def function_name():",
    "function function_name():",
    "define function_name():",
    "function_name():",
    1
  ],
  [
    "What does the 'append()' method do in Python?",
    "It removes an item from a list.",
    "It adds an item to the end of a list.",
    "It sorts the elements of a list.",
    "It reverses the elements of a list.",
    2
  ],
  [
    "Which keyword is used to define a conditional statement in Python?",
    "if",
    "else",
    "case",
    "switch",
    1
  ],
  [
    "What is the purpose of the 'for' loop in Python?",
    "To execute a block of code a specific number of times.",
    "To repeat a block of code until a condition is met.",
    "To execute a block of code for each item in a sequence.",
    "To skip the execution of a block of code.",
    3
  ],
  [
    "What is the syntax to open a file in Python?",
    "file.open('filename.txt')",
    "open.file('filename.txt')",
    "open('filename.txt')",
    "file('filename.txt')",
    3
  ],
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
