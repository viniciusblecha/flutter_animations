import 'package:flutter/material.dart';

const List<String> CATEGORIES = ["TRABALHO", "ESTUDOS", "CASA"];

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  String category = CATEGORIES[1];

  // LÓGICA FEIA
  void _changeCategory(String buttonPressed) {
    if (buttonPressed == "right" && category == CATEGORIES[0]) {
      setState(() {
        category = CATEGORIES[1];
      });
    } else if (buttonPressed == "right" && category == CATEGORIES[1]) {
      setState(() {
        category = CATEGORIES[2];
      });
    } else if (buttonPressed == "left" && category == CATEGORIES[2]) {
      setState(() {
        category = CATEGORIES[1];
      });
    } else if (buttonPressed == "left" && category == CATEGORIES[1]) {
      setState(() {
        category = CATEGORIES[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 32.0,
          ),
          color: category == CATEGORIES[0] ? Colors.grey[500] : Colors.white,
          onPressed: () {
            _changeCategory("left");
          },
        ),
        Text(
          category,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 32.0,
          ),
          color: category == CATEGORIES[2] ? Colors.grey[500] : Colors.white,
          onPressed: () {
            _changeCategory("right");
          },
        ),
      ],
    );
  }
}
