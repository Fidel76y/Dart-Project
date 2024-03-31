// Task 1: Create a function that takes two numbers as input and returns the sum of those numbers.
int addNumbers(int a, int b) {
  return a + b;
}

// Task 2: Write a program that uses a for loop to print out the numbers from 1 to 10.
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Create a program that uses a switch statement to check for different string values and output a response based on the value.
void checkFruit(String fruit) {
  switch (fruit) {
    case 'apple':
      print('Selected fruit is Apple.');
      break;
    case 'banana':
      print('Selected fruit is Banana.');
      break;
    case 'cherry':
      print('Selected fruit is Cherry.');
      break;
    default:
      print('Unknown fruit.');
  }
}

// Task 4: Create a program that uses a while loop to print out the numbers from 20 to 10.
void printNumbersWhile() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: Create a program that uses an if-else statement to check if a number is even or odd and output the result.
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

// Task 6: Create a program that takes a list of numbers as input and outputs the largest number in the list.
int findLargestNumber(List<int> numbers) {
  return numbers.reduce((curr, next) => curr > next ? curr : next);
}

// Task 7: Write a program that uses a try-catch block to catch an exception and output an error message.
void handleException() {
  try {
    int result = 12 ~/ 0;  // Division by zero
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1
  print('Task 1:');
  print('Sum of 5 and 3 is: ${addNumbers(5, 3)}\n');

  // Task 2
  print('Task 2:');
  printNumbers();
  print('');

  // Task 3
  print('Task 3:');
  checkFruit('apple');
  checkFruit('banana');
  checkFruit('cherry');
  checkFruit('grape');
  print('');

  // Task 4
  print('Task 4:');
  printNumbersWhile();
  print('');

  // Task 5
  print('Task 5:');
  checkEvenOrOdd(7);
  checkEvenOrOdd(12);
  print('');

  // Task 6
  print('Task 6:');
  List<int> numbers = [12, 5, 7, 18, 3, 9];
  print('The largest number in the list is: ${findLargestNumber(numbers)}\n');

  // Task 7
  print('Task 7:');
  handleException();
}
