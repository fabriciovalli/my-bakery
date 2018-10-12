import 'package:flutter/material.dart';
import 'package:my_bakery/config/application.dart';

class BakeryProfileScreen extends StatefulWidget {
  final bakery;

  const BakeryProfileScreen({Key key, this.bakery}) : super(key: key);
  @override
  _BakeryProfileScreenState createState() => new _BakeryProfileScreenState();
}

class _BakeryProfileScreenState extends State<BakeryProfileScreen> {
  final double _imageHeight = 300.0;
  Size size;

  Widget _buildContent() {
    return SafeArea(
      top: true,
      bottom: true,
      child: Stack(
        children: <Widget>[
          _buildImage(),
          _buildAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildBakeryDescription(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                  child: Text(
                    'Últimas Fornadas',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                FornadaCard(
                  hasCameOut: false,
                  time: '08:45',
                ),
                FornadaCard(
                  hasCameOut: true,
                  time: '08:15',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
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
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      child: Image.asset(
        'assets/montelibano.jpg',
        fit: BoxFit.cover,
        height: _imageHeight,
        colorBlendMode: BlendMode.srcOver,
        color: Color.fromARGB(120, 20, 10, 40),
      ),
    );
  }

  Widget _buildBakeryDescription() {
    return Padding(
      padding: EdgeInsets.only(top: _imageHeight * .7),
      child: SizedBox(
        height: size.height * .2,
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Monte Libano Padaria e Confeitaria',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  'Av. Nao sei o nome, 1234, Jardim da Penha, Vitória - ES',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Divider(
                  height: 24.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 100.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Aberto agora',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '06:00 - 20:00',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      body: Builder(
        builder: (BuildContext context) => _buildContent(),
      ),
    );
  }
}

class FornadaCard extends StatelessWidget {
  final bool hasCameOut;
  final String time;

  const FornadaCard({Key key, this.hasCameOut, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = hasCameOut ? 'Fornada saiu às ' : 'Fornada saindo às ';
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            color: hasCameOut ? Colors.red[400] : Colors.green[400],
            height: 60.0,
            width: 8.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            time,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
