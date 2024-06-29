import 'package:coching_app/model/course.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
 const FavoriteWidget({super.key, required this.course});

  final Course course;

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFavorite = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isFavorite = widget.course.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            widget.course.isFavorite  == isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,color: Colors.red,));
  }
}
