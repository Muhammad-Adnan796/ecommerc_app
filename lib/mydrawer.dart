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
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/home");
            },
            child: listcategory(
                "Home",
                Icon(
                  Icons.home,
                  color: Colors.white,
                )),
          ),
                GestureDetector(
                   onTap: (){
              Navigator.pushNamed(context, "/favorite");
            },
                  child: listcategory(
                              "Favorite",
                              Icon(
                  Icons.favorite,
                  color: Colors.white,
                              )),
                ),
                GestureDetector(
                   onTap: (){
              Navigator.pushNamed(context, "/setting");
            },
                  child: listcategory(
                              "setting",
                              Icon(
                  Icons.settings,
                  color: Colors.white,
                              )),
                ),
                GestureDetector(
                   onTap: (){
              Navigator.pushNamed(context, "/about");
            },
                  child: listcategory(
                              "Profile",
                              Icon(
                  Icons.person,
                  color: Colors.white,
                              )),
                )
        ],
      ),
      backgroundColor: AllColors.primarycolor,
    );
  }

  ListTile listcategory(String tittext, Icon icons) {
    return ListTile(
      title: Text(
        tittext,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      leading: icons,
    );
  }
}
