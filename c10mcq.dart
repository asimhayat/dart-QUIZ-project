import 'dart:io';
 class Quizc
{
  quiz3(){

  var questions = [
  [
    "What is the syntax to print 'Hello, World!' in C?",
    "print('Hello, World!')",
    "printf('Hello, World!')",
    "echo('Hello, World!')",
    "Console.WriteLine('Hello, World!')",
    2
  ],
  [
    "Which data type is used to store integer values in C?",
    "int",
    "float",
    "char",
    "double",
    1
  ],
  [
    "What is the purpose of the 'if' statement in C?",
    "To define a loop.",
    "To define a function.",
    "To define a conditional statement.",
    "To declare a variable.",
    3
  ],
  [
    "What does the '++' operator do in C?",
    "Subtract 1 from a variable.",
    "Add 1 to a variable.",
    "Multiply a variable by 2.",
    "Divide a variable by 2.",
    2
  ],
  [
    "What is the syntax to declare a function in C?",
    "function_name() { }",
    "def function_name():",
    "void function_name() { }",
    "function function_name() { }",
    3
  ],
  [
    "What does the 'scanf()' function do in C?",
    "Prints a formatted string to the console.",
    "Reads input from the user.",
    "Calculates the square root of a number.",
    "Converts a string to lowercase.",
    2
  ],
  [
    "Which keyword is used to define a constant in C?",
    "var",
    "let",
    "const",
    "define",
    3
  ],
  [
    "What is the purpose of the 'for' loop in C?",
    "To execute a block of code a specific number of times.",
    "To repeat a block of code until a condition is met.",
    "To execute a block of code for each item in a sequence.",
    "To skip the execution of a block of code.",
    1
  ],
  [
    "What does the 'return' statement do in a function in C?",
    "It defines the start of the function.",
    "It ends the execution of the function and returns a value.",
    "It declares a variable.",
    "It prints a value to the console.",
    2
  ],
  [
    "What is the purpose of the 'sizeof()' operator in C?",
    "To return the size of a variable in bytes.",
    "To return the size of a string in characters.",
    "To return the length of an array.",
    "To return the size of a pointer.",
    1
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
