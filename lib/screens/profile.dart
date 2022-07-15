import 'package:ecommerce_app/allcolors.dart';
import 'package:ecommerce_app/mydrawer.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: AllColors.primarycolor.withOpacity(0.5),
      appBar: AppBar(
          foregroundColor: AllColors.primarycolor,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(color: AllColors.primarycolor, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.2,
          ),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: AllColors.primarycolor,
              backgroundImage: AssetImage("images/image_logo.png"),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              "User Name",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              size: 25,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
