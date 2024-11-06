import 'course.dart';

void printCourses({required List<Course> courses}) {
  for (var course in courses) {
    print(
        'Course Name: ${course.name}, Code: ${course.code}, Credit Hour: ${course.creditHour}, Year Offered: ${course.courseYear}');
  }
}
