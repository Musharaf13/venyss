import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOrderCard extends StatelessWidget {
  const CustomOrderCard({
    @required this.title,
    @required this.date,
    @required this.price,
  });

  final String title;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        trailing: Text(
          price,
        ),
      ),
    );
  }
}
