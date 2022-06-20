import 'package:ecommerce_app/allcolors.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              "images/image_logo.png",
            ),
            decoration: BoxDecoration(),
          ),
          Container(
            child: ListTile(
              title: Text(
                "Categories",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      backgroundColor: AllColors.primarycolor,
    );
  }
}
