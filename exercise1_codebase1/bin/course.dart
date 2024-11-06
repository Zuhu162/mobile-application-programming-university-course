class Course {
  // Private attributes for course code and course name
  String _code;
  String _name;

  // Constructor to initialize a course with code and name
  Course(this._code, this._name);

  // Getter for the course code
  String get code => _code;

  // Setter for the course code
  set code(String code) => _code = code;

  // Getter for the course name
  String get name => _name;

  // Setter for the course name
  set name(String name) => _name = name;

  // Getter to calculate the credit hour based on the last character of the course code
  int get creditHour {
    // Convert the last character of _code to an integer for credit hour
    return int.tryParse(_code[_code.length - 1]) ?? 0;
  }

  // Getter to determine the course year based on the fifth character of the course code
  String get courseYear {
    final yearChar = _code[4]; // fifth character of the course code
    switch (yearChar) {
      case '1':
        return 'Year 1';
      case '2':
        return 'Year 2';
      case '3':
        return 'Year 3';
      case '4':
        return 'Year 4';
      default:
        return 'Unknown Year';
    }
  }
}
