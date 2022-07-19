import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  // final String image;
  final String title;

  const CategoryModel({
    // required Key key,
    // required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 140,
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 0), color: Colors.black26, blurRadius: 5),
            ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(color: Color(0xff999999),
          borderRadius: BorderRadius.circular(10)),
        ),
        Text(this.title)
      ]),
    );
  }
}
