import 'package:flutter/material.dart';

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
      child: Stack(
        children: <Widget>[
          _buildBackground(),
          _buildAppBar(),
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              _buildHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              _buildBody(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .4,
      color: Color(0Xfff64747),
    );
  }

  Widget _buildAppBar() {
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

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              minRadius: 50.0,
              maxRadius: 50.0,
              child: Image.network(
                'http://www.paoquentinhosaindo.com.br/site/themes/hebo/img/logoSite.png',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'BEM VINDO!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
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
              width: 40.0,
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
          text: 'Próximas à mim',
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
    return SizedBox(
      height: deviceSize.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  this.text,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: this.itemList,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
