import 'package:flutter/material.dart';
import 'package:my_bakery/screen/bakery_list_screen.dart';
import 'package:my_bakery/widgets/bakery_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Bakery',
            style: TextStyle(color: Color(0xFFCCCCCC)),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print('ir para notificacoes');
              },
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.search),
                text: 'Localizar Padarias',
              ),
              Tab(
                icon: Icon(Icons.timer),
                text: 'Fornadas',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: BakeryListScreen(),
        ),
        body: TabBarView(
          children: <Widget>[
            BakeryListScreen(),
            Center(
              child: Icon(Icons.timer),
            ),
          ],
        ),
      ),
    );
  }
}
