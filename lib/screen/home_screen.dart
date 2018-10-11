import 'package:flutter/material.dart';
import 'package:my_bakery/widgets/custom_scaffold.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  Size deviceSize;

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context),
            SizedBox(height: 10.0),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Text(
            'MY BAKERY',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 26.0),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          color: Color(0Xfff64747),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.network(
              'http://www.paoquentinhosaindo.com.br/site/themes/hebo/img/logoSite.png',
              height: 200.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        _buildAppBar(context),
      ],
    );
  }

  Widget _buildBody() {
    var list = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.red,
              width: 80.0,
            ),
          ),
    );
    return Column(
      children: <Widget>[
        FeaturedList(
          text: 'Minhas favoritas',
          itemList: list,
        ),
        SizedBox(
          height: 10.0,
        ),
        FeaturedList(
          text: 'Padarias próximas à mim',
          itemList: list,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      body: Builder(
        builder: (BuildContext context) => _buildContent(context),
      ),
    );
  }
}

class FeaturedList extends StatelessWidget {
  final String text;
  final Widget itemList;

  FeaturedList({
    Key key,
    this.text,
    this.itemList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 8.0, bottom: 8.0),
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: deviceSize.height / 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(elevation: 2.0, child: this.itemList),
          ),
        )
      ],
    );
  }
}
