import '../model/course.dart';

class ShoppingCartDataProvider {
  static final List<Course> _shoppingCartCourseList = [];

  static List<Course> get shoppingCartCourseList => _shoppingCartCourseList;

  static addCourse(Course course) {
    _shoppingCartCourseList.add(course);
  }

  static addAllCourse(List<Course> courses) {
    _shoppingCartCourseList.addAll(courses);
  }

  static clearCart() {
    _shoppingCartCourseList.clear();
  }

  static deletCourse(Course course) {
    _shoppingCartCourseList.remove(course);
  }
}
