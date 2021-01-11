import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewVoucherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: FlutterLogo(size: 72.0),
        leading: Image(image: new AssetImage('img/discount.png')),
        title: Text(
          '9Promo! Best Buy this month',
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spend RM0',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'No Max Limit',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Valid Till: 31.03.2020',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),

        isThreeLine: true,

        // isThreeLine: true,
      ),
    );
  }
}
