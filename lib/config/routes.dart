import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_bakery/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String profile = "/profile";
  static String list = "/list";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("route was not found!");
    });
    router.define(root, handler: rootHandler);
    router.define(profile, handler: profileHandler);
    router.define(list, handler: listHandler);
  }
}
