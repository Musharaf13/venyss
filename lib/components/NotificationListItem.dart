import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: FlutterLogo(size: 72.0),
        title: Text(
          '9Promo! Best Buy this month',
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          'Read more.',
          style: TextStyle(color: Colors.black),
        ),
        trailing: Icon(
          Icons.arrow_right,
          size: 40,
        ),
        // isThreeLine: true,
      ),
    );
  }
}
