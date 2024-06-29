import 'package:coching_app/constantce.dart';
import 'package:coching_app/data%20provider/shopping_cart_data_provider.dart';
import 'package:coching_app/model/course.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
   ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    double totelamount = calculateTotel();
    List<Course> courseList = ShoppingCartDataProvider.shoppingCartCourseList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping cart'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
                  children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Totel:',
                style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${totelamount}',
                style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
                height: 20,
              ),
          Align(
            alignment:Alignment.topLeft,
            child: Text(
              'Promotion code',
              style: TextStyle(
                  color: Colors.grey.shade900, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Promo Code',
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {}, 
                child:const Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                  ),)
                ),
            ],
          ),
          Text(
            "${courseList.length} Choose Course's",
            style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: courseList.length,
                itemBuilder: (context, index) {
                  return createShoppingCartIyem(index);
                }),
          )
                  ],
                ),
        ),
      ),
    );
  }

  double calculateTotel() {
    return ShoppingCartDataProvider.shoppingCartCourseList
        .fold(0, (old, course) => old + course.price);
  }

  Widget createShoppingCartIyem(int index) {
    Course course = ShoppingCartDataProvider.shoppingCartCourseList[index];
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Image.network(course.thumbnaiul),
        title: Text(
          course.title,
          maxLines: 2,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade800,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'By ${course.createdBy}',
              style: const TextStyle(
                color: kBlueColor,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                Text(
                  course.duration,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.grey,
                  child: Container(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${course.lessonNo} Lesson',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${course.price}PRK',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    ShoppingCartDataProvider.deletCourse(course);
                  });
                },
                child: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
