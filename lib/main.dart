import 'package:ecommerce_app/allcolors.dart';
import 'package:ecommerce_app/auth/login.dart';
import 'package:ecommerce_app/auth/register.dart';
import 'package:ecommerce_app/auth/splash.dart';
import 'package:ecommerce_app/provider/fav_pro.dart';
import 'package:ecommerce_app/screens/fav.dart';
import 'package:ecommerce_app/screens/home.dart';
import 'package:ecommerce_app/screens/profile.dart';
import 'package:ecommerce_app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavouriteProvider(),),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amber,
          iconTheme: IconThemeData(color: AllColors.primarycolor)),
      home: Splash(),
      routes: {
        "/login": (context) => Login(),
        "/register": (context) => Register(),
        "/home": (context) => Home(),
        "/favorite": (context) => Favorite(),
        "/setting": (context) => Settings(),
        "/about": (context) => About(),
      },
    ));
  }
}
