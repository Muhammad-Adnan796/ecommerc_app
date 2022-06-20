import 'package:ecommerce_app/allcolors.dart';
import 'package:ecommerce_app/screens/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: AllColors.primarycolor,
        title: Text("Home"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageSlideshow(
                initialPage: 0,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: AllColors.primarycolor,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                autoPlayInterval: 3000,
                isLoop: true,
                children: [
                  Image.asset(
                    "images/image_logo.png",
                    height: height * 0.01,
                    width: width * 0.8,
                  ),
                  Image.asset(
                    "images/image_logo.png",
                    height: height * 0.01,
                    width: width * 0.8,
                  ),
                  Image.asset(
                    "images/image_logo.png",
                    height: height * 0.01,
                    width: width * 0.8,
                  ),
                  Image.asset(
                    "images/image_logo.png",
                    height: height * 0.01,
                    width: width * 0.8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
