double average(List<int> grades){
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades){
    sum+=grade;

  }
  return sum/grades.length;

}
int maxGrade(List<int> grades){
  int max = grades[0];
  for (var grade in grades){
    if (grade > max) max = grade;
  }
  return max ;
}

int minGrade(List<int> grades){
  int min = grades[0];
  for (var grade in grades){
    if (grade < min) min = grade;

  }
  return min ;

}

String letterGrade(double avg){
  if (avg >=4.5) return "Отлично";
  if (avg >= 3.5) return "Хорошо";
  if (avg >= 2.5) return "Удолетворительно";
  return "неуд";

}

void printStats({required String name , required List<int> grades}){
  double avg = average(grades);
  print("$name");
  print("$grades");
  print("${avg.toStringAsFixed(2)}");
  print("${maxGrade(grades)}, ${minGrade(grades)}");
  print("${letterGrade(avg)}");
  print("");

}






void main(){
  Map<String,List<int>> students = {
    "Vika" : [2,3,5],
    "Misha" : [2,2,2,3],
    "Ivan" : [3,5,5],
  };
  print("Анализатор оценок");
  students.forEach((name,grades){
    printStats(name:name,grades:grades);
  });
  print("Общая статистика");
  int totalStudents = students.length;
  print("$totalStudents");
  int excellentCount = 0;
  students.forEach((name,grades){
    if (average(grades) >= 4.5) excellentCount++;

  });
  print("$excellentCount из $totalStudents");
}