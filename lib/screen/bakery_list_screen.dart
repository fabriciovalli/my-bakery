import 'package:flutter/material.dart';
import 'package:my_bakery/widgets/bakery_card.dart';

class BakeryListScreen extends StatefulWidget {
  @override
  _BakeryListScreenState createState() => new _BakeryListScreenState();
}

class _BakeryListScreenState extends State<BakeryListScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return BakeryCard();
      },
      itemCount: 10,
    );
  }
}
