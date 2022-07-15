import 'package:ecommerce_app/allcolors.dart';
import 'package:ecommerce_app/mydrawer.dart';
import 'package:flutter/material.dart';




class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
    appBar: AppBar(
        foregroundColor: AllColors.primarycolor,
        backgroundColor: Colors.white,
        title: Text("Setting"),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.clear_all_rounded,
              size: 40,
            ),
          );
        }),
      ),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}