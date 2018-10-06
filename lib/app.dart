import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_bakery/config/application.dart';
import 'package:my_bakery/config/routes.dart';

class MyBakeryApp extends StatefulWidget {
  @override
  _MyBakeryAppState createState() => new _MyBakeryAppState();
}

class _MyBakeryAppState extends State<MyBakeryApp> {
  _MyBakeryAppState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
    );
  }
}
