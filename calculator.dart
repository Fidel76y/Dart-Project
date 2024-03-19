import 'dart:io';

void main() {
  print('My Calculator');

  while (true) {
    print('\nEnter the operation (+, -, *, /) or type "exit" to quit:');
    String operation = stdin.readLineSync()!.trim();

    if (operation.toLowerCase() == 'exit') {
      print('Exiting the calculator...');
      break;
    }

    if (!isValidOperation(operation)) {
      print('Invalid operation! Please try again.');
      continue;
    }

    print('Enter the first number:');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter the second number:');
    double num2 = double.parse(stdin.readLineSync()!);

    double result;
    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print('Error: Division by zero!');
          continue;
        }
        result = num1 / num2;
        break;
    }

    print('Result: $result');
  }
}

bool isValidOperation(String operation) {
  return ['+', '-', '*', '/'].contains(operation);
}
