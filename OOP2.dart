class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Teaches: $subject');
  }
}

class School {
  Student? student;
  Teacher? teacher;

  void createStudent(String name, int age, String gradeLevel) {
    student = Student(name, age, gradeLevel);
  }

  void createTeacher(String name, int age, String subject) {
    teacher = Teacher(name, age, subject);
  }

  void printInformation() {
    if (student != null) {
      print('Student Information:');
      student!.printInfo();
      print('');
    }
    if (teacher != null) {
      print('Teacher Information:');
      teacher!.printInfo();
    }
  }
}

void main() {
  School school = School();
  school.createStudent('John Doe', 15, '10th grade');
  school.createTeacher('Ms. Smith', 35, 'Mathematics');
  school.printInformation();
}
