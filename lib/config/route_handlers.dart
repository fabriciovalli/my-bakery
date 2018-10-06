import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_bakery/screen/login_screen.dart';

var rootHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginScreen();
});

var loginHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginScreen();
});
