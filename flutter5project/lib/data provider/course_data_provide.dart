import 'package:coching_app/model/course.dart';
import 'package:coching_app/model/course_category.dart';
import 'package:coching_app/model/lecture.dart';
import 'package:coching_app/model/section.dart';

class CourseDataProvide {
  static List<Sectionss> SectionList = [
    Sectionss("Introduction",[
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
    ]),
    Sectionss("Introduction",[
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
    ],),
   Sectionss("Introduction",[
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
    ],),
   Sectionss("Introduction",[
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
    ],),
   Sectionss("Introduction",[
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
      Lecture("what is flutter","10:00 min"),
    ],),
  ];

  static List<Course> coursesList = [ 

    Course(
    '1',
    'flutter Master Class', 
    'https://www.shutterstock.com/image-vector/3d-web-vector-illustrations-online-600nw-2152289507.jpg',
    'This complete flutter course beginner to export',
    'Effort less course',
    '01-jan-2022',
     4.2,
    false,
    450,
    CourseCategory.finance,
    '2.5 hours',
     15,
     SectionList,
     ),
    Course(
    "2",
    "flutter Master Class",
    'https://www.shutterstock.com/image-vector/3d-web-vector-illustrations-online-600nw-2152289507.jpg',
    'This complete flutter course beginner to export',
    'Effort less course',
    '01-jan-2022',
    4.2,
    false,
    450,
    CourseCategory.marketing,
    '2.5 hours',
    15,
    SectionList,
    ),
    Course(
    "2",
    "flutter Master Class",
    'https://www.shutterstock.com/image-vector/3d-web-vector-illustrations-online-600nw-2152289507.jpg',
    'This complete flutter course beginner to export',
    'Effort less course',
    '01-jan-2022',
    4.2,
    false,
    450,
    CourseCategory.other,
    '2.5 hours',
    15,
    SectionList,
    ),
    Course(
    "4",
    "flutter Master Class",
    'https://www.shutterstock.com/image-vector/3d-web-vector-illustrations-online-600nw-2152289507.jpg',
    'This complete flutter course beginner to export',
    'Effort less course',
    '01-jan-2022',
    4.2,
    false,
    450,
    CourseCategory.programming,
    '2.5 hours',
    15,
    SectionList,
    ),
    Course(
    "5",
    "flutter Master Class",
    'https://www.shutterstock.com/image-vector/3d-web-vector-illustrations-online-600nw-2152289507.jpg',
    'This complete flutter course beginner to export',
    'Effort less course',
    '01-jan-2022',
    4.2,
    false,
    450,
    CourseCategory.all,
    '2.5 hours',
    15,
    SectionList,
    ),
  ];


}
