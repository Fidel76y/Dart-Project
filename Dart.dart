// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student Name: $name');
    print('Student Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher Name: $name');
    print('Teacher Age: $age');
    print('Subject: $subject');
  }
}

// Main class
class School {
  void getInfo() {
    // Creating student object
    Student student = Student('John Doe', 15, '10th');

    // Creating teacher object
    Teacher teacher = Teacher('Jane Smith', 30, 'Math');

    // Printing student and teacher information
    print('Student Information:');
    student.printStudentInfo();
    print('\nTeacher Information:');
    teacher.printTeacherInfo();
  }
}

void main() {
  // Creating school object
  School school = School();

  // Calling method to get and print student and teacher information
  school.getInfo();
}
