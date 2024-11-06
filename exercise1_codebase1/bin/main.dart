//? MOBILE APPLICATION PROGRAMMING
//? Exercise 1: Dart Programming Language

// Date:
// Section: 1
// Member 1's Name: Amirul Shafiq Bin Amirrullah    Location: UTM (i.e. where are you currently located)
// Member 2's Name: Zuhayer Adnan Siddique    Location: KLG Campus Residence
// Video link(s):

import 'course.dart';
import 'data.dart';
import 'utils.dart';

void main() {
  // Task 3a: Create a list of Course objects using a 'for' loop
  List<Course> list1 = [];
  for (var entry in courses.entries) {
    list1.add(Course(entry.key, entry.value));
  }

  // Task 3b: Create a list of Course objects using the 'forEach' high-order method
  List<Course> list2 = [];
  courses.forEach((code, name) {
    list2.add(Course(code, name));
  });

  // Task 3c: Create a list of Course objects using the 'map' high-order method
  List<Course> list3 =
      courses.entries.map((entry) => Course(entry.key, entry.value)).toList();

  // Print the Course List Table
  print('Course Code\tCredit Hour\tYear Offered\tCourse Name');
  print('------------\t-----------\t------------\t-----------');
  for (var course in list1) {
    // using list1 as an example; list2 and list3 would yield the same result
    print(
        '${course.code.padRight(10)}\t${course.creditHour.toString().padRight(11)}\t${course.courseYear.padRight(12)}\t${course.name}');
  }

  // Task 4: Calculate the total credits of all courses using the 'fold' high-order method
  int totalCreditHours =
      list1.fold(0, (sum, course) => sum + course.creditHour);
  int totalCourses = list1.length;

  // Task 5: Calculate the number of courses by year offered
  final coursesByYear = list1.fold<Map<String, int>>({}, (map, course) {
    map[course.courseYear] = (map[course.courseYear] ?? 0) + 1;
    return map;
  });

  // Print the Number of Courses by Year Offered in Ascending Order
  String totalCreditHoursText = 'Total Credit Hours: $totalCreditHours';
  String totalCoursesText = 'Total Number of Courses: $totalCourses';

  print('\n' + totalCoursesText + '        ' + totalCreditHoursText);

  print('\nYear Offered\tNumber of Courses');
  print('------------\t------------------');
  var sortedYears = coursesByYear.keys.toList()..sort();
  for (var year in sortedYears) {
    print('${year.padRight(12)}\t${coursesByYear[year]}');
  }
}
