import 'package:flutter/material.dart';
import 'package:my_bakery/widgets/bakery_card.dart';

class BakeryListScreen extends StatefulWidget {
  @override
  _BakeryListScreenState createState() => new _BakeryListScreenState();
}

class _BakeryListScreenState extends State<BakeryListScreen> {
  Widget _buildContent() {
    return Stack(
      children: <Widget>[
        _buildAppBar(),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return BakeryCard();
            },
            itemCount: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return SafeArea(
      top: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: Builder(
        builder: (context) => _buildContent(),
      ),
    );
  }
}
