import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget childWidget;
  final Function function;

  ReusableCard({@required this.color, this.childWidget, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color, //Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: childWidget,
      ),
    );
  }
}
