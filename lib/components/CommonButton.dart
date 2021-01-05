import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButtom extends StatelessWidget {
  const CommonButtom({
    @required this.title,
    @required this.color,
    @required this.onpress,
  });

  final String title;
  final Color color;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: FlatButton(
        onPressed: onpress,
        child: Text(title),
        color: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.black, width: 1.5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
