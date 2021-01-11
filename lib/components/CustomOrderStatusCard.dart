import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOrderStatusCard extends StatelessWidget {
  const CustomOrderStatusCard({
    @required this.title,
    @required this.date,
    @required this.status,
  });

  final String title;
  final String date;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Card(
        elevation: 0,
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
          trailing: Icon(
            Icons.check_circle,
            size: 40,
            color: status ? Colors.green : Colors.grey,
          ),
        ),
      ),
    );
  }
}
