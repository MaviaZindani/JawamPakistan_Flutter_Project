import 'package:coching_app/constantce.dart';
import 'package:coching_app/data%20provider/shopping_cart_data_provider.dart';
import 'package:coching_app/model/course.dart';
import 'package:coching_app/model/section.dart';
import 'package:coching_app/utils/util.dart';
import 'package:coching_app/view/detail/widget/favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({super.key, required this.course});

  var greyTextStyle = TextStyle(color: Colors.grey.shade600, fontSize: 16);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/shoppingCartScreen');
                                  },
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                course.thumbnaiul,
                              )),
                          Column(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                size: 30,
                                color: Colors.grey.shade500,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'play video',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30,
                            ),
                            topRight: Radius.circular(30),
                          )),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: kBlueColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      course.createdBy,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: kBlueColor),
                                    )
                                  ],
                                ),
                                FavoriteWidget(course: course),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.play_circle_outline),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${course.lessonNo}',
                                      style: greyTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.timer_rounded),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      course.duration,
                                      style: greyTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${course.rate}',
                                      style: greyTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ReadMoreText(
                              course.discription,
                              trimLines: 2,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              style: greyTextStyle,
                              moreStyle: const TextStyle(
                                  color: kBlueColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                              lessStyle: const TextStyle(
                                  color: kBlueColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Course Content',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '(${course.section.length})',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade800),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: course.section.length,
                                itemBuilder: (context, index) {
                                  return buildCourseContent(index);
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                     ' ${course.price}PRK',
                      style: TextStyle(color: Colors.grey.shade900),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kBlueColor),
                          onPressed: () {
                            String message =
                                'This course is already added into your cart';
                            if (!ShoppingCartDataProvider.shoppingCartCourseList
                                .contains(course)) {
                              message = 'course is added in your cart';
                              ShoppingCartDataProvider.addCourse(course);
                              Util.showMessageWithAction(
                                  context, message, 'View', () {
                                Util.openShoppingCart(context);
                              });
                            }
                          },
                          child: Text(
                            'Add Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kBlueColor),
                          onPressed: () {},
                          child: Text(
                            'Buy now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget buildCourseContent(int index) {
    Sectionss sectionss = course.section[index];
    return ExpansionTile(
      title: Text(
        'Section ${index++} - ${sectionss.name}',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: sectionss.lecture.map((Lecture) {
        return ListTile(
          dense: true,
          onTap: () {},
          leading: const SizedBox(),
          title: Text(course.title),
          subtitle: Row(
            children: [
              Icon(Icons.access_time),
              const SizedBox(
                width: 10,
              ),
              Text(
                Lecture.Duration,
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
