import 'package:curso_animations/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do DC",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 7,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do DC 2",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 6,
        ),
        ListData(
          title: "Estudar Flutter 3",
          subtitle: "Com o curso do DC 3",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: "Estudar Flutter 4",
          subtitle: "Com o curso do DC 4",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do DC",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do DC 2",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter 3",
          subtitle: "Com o curso do DC 3",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 4",
          subtitle: "Com o curso do DC 4",
          image: AssetImage("images/vinicius.jpeg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
