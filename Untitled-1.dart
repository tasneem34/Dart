import 'dart:io';

main() {
  var Question = [
    "1)Which of the following is true regarding Flutter?",
    "2)Flutter developed by?",
    "3)Flutter is not a language; it is an SDK.",
    "4)The first alpha version of Flutter was released in ?",
    "5)Flutter is mainly optimized for 2D mobile apps that can run on?"
  ];

  var Options = {
    'A': [
      "Flutter is a UI toolkit for creating fast, beautiful, natively compiled mobile applications",
      "Oracle",
      "TRUE",
      "2016",
      "Android"
    ],
    'B': [
      "Flutter use one programming language and a single codebase",
      "Facebook",
      "FALSE",
      "2017",
      "iOS"
    ],
    'C': [
      "Flutter is free and open-source.",
      "Google",
      "Can be true or false",
      "2018",
      "Both A and B"
    ],
    'D': ["All of the above", "IBM", "Can not say", "2019", "None of the above"]
  };
  var Answer_Key = ['D', 'C', 'A', 'B', 'C'];
  List Answers = [];
  var grade = 0;
  int count = 0;
  var keys_list = Options.keys.toList();

  for (var i in Question) {
    print(i);
    int c_keyList = 0;
    for (var opt in Options.values) {
      var kay_val = keys_list[c_keyList];
      print("     $kay_val)" + opt[count]);
      c_keyList++;
    }
    print("Enter Your Answer of this Question");
    var Ans = stdin.readLineSync();

    while (Ans?.toUpperCase() != 'A' &&
        Ans?.toUpperCase() != 'B' &&
        Ans?.toUpperCase() != 'C' &&
        Ans?.toUpperCase() != 'D') {
      print("Inalived Input");
      print("Please Enter Valied Answer: ");
      Ans = stdin.readLineSync();
    }

    Answers.add(Ans);
    switch (Ans?.toUpperCase()) {
      case 'A':
        if (Answer_Key[count] == 'A') {
          grade += 20;
        }
        break;
      case 'B':
        if (Answer_Key[count] == 'B') {
          grade += 20;
        }
        break;
      case 'C':
        if (Answer_Key[count] == 'C') {
          grade += 20;
        }
        break;
      case 'D':
        if (Answer_Key[count] == 'D') {
          grade += 20;
        }
        break;
    }
    count++;
  }

  print("Your Answers was :     $Answers");
  print("The Correct Answer Key:$Answer_Key");
  print("Your Grade in the quiz is : $grade");
  print(" And Your Average Grade in the quiz is :");
  var average = (grade / 100) * 100;
  print("$average %");
  switch (average > 90) {
    case true:
      print("A");
      break;
    case false:
      switch (average > 80) {
        case true:
          print("B");
          break;
        case false:
          switch (average > 70) {
            case true:
              print("C");
              break;
            case false:
              switch (average > 60) {
                case true:
                  print("D");
                  break;
                default:
                  print("F");
                  break;
              }
              break;
          }
          break;
      }
  }
}
