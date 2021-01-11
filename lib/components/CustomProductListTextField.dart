import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProductListTextField extends StatelessWidget {
  const CustomProductListTextField({
    Key key,
    @required this.flex,
    @required this.skuController,
    @required this.skuHint,
  }) : super(key: key);

  final int flex;
  final TextEditingController skuController;
  final String skuHint;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: TextField(
        controller: skuController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: skuHint,
            contentPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
            isDense: true),
      ),
    );
  }
}
