import 'package:ecommerce_app/allcolors.dart';
import 'package:ecommerce_app/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:provider/provider.dart';

import '../provider/fav_pro.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider =
        Provider.of<FavouriteProvider>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.primarycolor,
      drawer: const MyDrawer(),
      appBar: AppBar(
        foregroundColor: AllColors.primarycolor,
        backgroundColor: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(
              height: height * 0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  rowitems(height, width),
                  rowitems(height, width),
                  rowitems(height, width),
                  rowitems(height, width),
                  rowitems(height, width),
                  rowitems(height, width),
                ],
              ),
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              children: [
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
                griditem(
                  height,
                  width,
                  InkWell(onTap: () {}, child: Icon(Icons.favorite)),
                  Icon(Icons.delete),
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(
                      builder: (context, value1, child) {
                    return Card(
                      elevation: 50,
                      child: ListTile(
                        onTap: () {
                          if (value1.selectedItem.contains(index)) {
                            value1.removeItem(index);
                          } else {
                            value1.addItem(index);
                          }
                        },
                        title: Text(
                          "Item" + index.toString(),
                        ),
                        trailing: Icon(
                          value1.selectedItem.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_outline,
                        ),
                      ),
                    );
                  });
                })
          ],
        ),
      ),
    );
  }

  Widget griditem(double height, double width, var iconsfav, var icondel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              "images/image_logo.png",
              height: height * 0.15,
              width: width * 0.45,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                ),
                child: iconsfav,
              ),
              SizedBox(
                width: width * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 5),
                child: icondel,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget rowitems(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              "images/image_logo.png",
              height: height * 0.15,
              width: width * 0.4,
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 55,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              ),
              SizedBox(
                width: width * 0.17,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 55,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
