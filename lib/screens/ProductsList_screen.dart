import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomProductListTextField.dart';

import '../constants.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final skuController = TextEditingController();
  final productNameController = TextEditingController();
  final String skuHint = "SKU";
  final int flex = 1;
  List<DataCell> Items = [
    DataCell(
      Image(
        height: 40,
        width: 40,
        image: new AssetImage('img/redeem.jpg'),
      ),
    ),
    DataCell(
      Container(
        width: 50,
        child: Text(
          "Special Product",
          softWrap: true,
        ),
      ),
    ),
    DataCell(
      Container(
        width: 50,
        child: Text(
          "Diamond",
          softWrap: true,
        ),
      ),
    ),
    DataCell(
      Container(
        width: 50,
        child: Text(
          "RM 45",
          softWrap: true,
        ),
      ),
    ),
    DataCell(
      Container(
        width: 50,
        child: Text(
          "Buy Now",
          softWrap: true,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbuttonColor2,
      appBar: AppBar(
        title: Text(
          "Product List",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: kbuttonColor2,
        bottom: PreferredSize(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    CustomProductListTextField(
                        flex: 1, skuController: skuController, skuHint: "SKU"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomProductListTextField(
                        flex: 2,
                        skuController: productNameController,
                        skuHint: "Product Name"),
                  ],
                )),
            preferredSize: Size.fromHeight(55)),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: DataTable(
            dataRowHeight: 70,
            columnSpacing: 20,
          
            columns: [
              DataColumn(
                label: Container(
                  width: 50,
                  child: Text(
                    "Product Image",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  width: 50,
                  child: Text(
                    "Product Name",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  width: 50,
                  child: Text(
                    "Level Price",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  width: 50,
                  child: Text(
                    "Retail Price",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  width: 50,
                  child: Text(
                    "Buy Now",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
            rows: [
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
              DataRow(cells: Items),
            ]),
      ),
    );
  }
}
