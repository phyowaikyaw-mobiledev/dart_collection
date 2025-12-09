class Teacher {
  String name = "Nu Nu";
  output() {
    print("Teacher name is $name");
  }
}

class Student extends Teacher {
  //  extends -> inherit
  // Student -> Sub class , derive class , child class
  // Teacher -> Super class , Parent class
}

class HeadMaster extends Teacher {
  String name = "U Aung San";
  output() {
    print("HeadMaster Name is $name");
  }
}

void main() {
  Teacher teacher = new Teacher();
  print(teacher.name);
  teacher.output();

  Student student = new Student();
  print(student.name);
  student.output();

  HeadMaster master = new HeadMaster();
  print(master.name);
  master.output();
}
