import 'package:flutter/material.dart';
import 'package:my_bakery/config/application.dart';

class BakeryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Application.router.navigateTo(context, '/profile');
                    },
                    child: Hero(
                      tag: 'padaria',
                      child: Container(
                        height: 150.0,
                        width: 100.0,
                        child: Image.asset(
                          'assets/montelibano.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
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
                        Text(
                          'Monte Libano Padaria e Confeitaria',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Av. Nao sei o nome, 1234, Jardim da Penha, Vitória - ES',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Divider(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // IconButton(
                            //   icon: Icon(Icons.timer),
                            //   onPressed: () {},
                            // ),
                            // IconButton(
                            //   icon: Icon(Icons.person),
                            //   onPressed: () {},
                            // ),
                            // IconButton(
                            //   icon: Icon(Icons.share),
                            //   onPressed: () {},
                            // ),
                            RaisedButton.icon(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Adicionar',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Color(0Xfff64747),
                              onPressed: () {
                                var snackBar = SnackBar(
                                  content:
                                      Text('Cliquei no botao de adicionar'),
                                );
                                print('Cliquei no botao de adicionar');

                                Scaffold.of(context).showSnackBar(snackBar);
                              },
                            )
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
      ),
    );
  }
}
