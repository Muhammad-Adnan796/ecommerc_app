import 'package:ecommerce_app/provider/fav_pro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context,listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Favourite List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteProvider.selectedItem.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(builder: (context , value1, child){
                    return ListTile(
                      onTap: () {
                        if(value1.selectedItem.contains(index)){
                          value1.removeItem(index);
                        }else{
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
                    );
                  });


                }),
          )
        ],
      ),
    );
  }
}
