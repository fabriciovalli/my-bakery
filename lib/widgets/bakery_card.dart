import 'package:flutter/material.dart';

class BakeryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  child: Image.network(
                    'http://www.paoquentinhosaindo.com.br/site/themes/hebo/img/logoSite.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Moinho Itália'),
                      Text('Praia da Costa, Vila Velha, Espirito Santo'),
                      Divider(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.timer),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.person),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {},
                          ),
                          // RaisedButton.icon(
                          //   icon: Icon(Icons.sd_card),
                          //   label: Text('Adicionar'),
                          //   onPressed: () {
                          //     var snackBar = SnackBar(
                          //       content: Text('Cliquei no botao de adicionar'),
                          //     );
                          //     print('Cliquei no botao de adicionar');

                          //     Scaffold.of(context).showSnackBar(snackBar);
                          //   },
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
