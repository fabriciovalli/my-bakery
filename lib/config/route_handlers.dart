import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_bakery/screen/bakery_list_screen.dart';
import 'package:my_bakery/screen/bakery_profile_screen.dart';
import 'package:my_bakery/screen/home_screen.dart';
import 'package:my_bakery/screen/login_screen.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeScreen();
});

var profileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return BakeryProfileScreen();
});

var listHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return BakeryListScreen();
});
