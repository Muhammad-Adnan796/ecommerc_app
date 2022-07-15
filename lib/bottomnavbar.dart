// import 'package:bottom_bar/bottom_bar.dart';
// import 'package:ecommerce_app/screens/fav.dart';
// import 'package:ecommerce_app/screens/home.dart';
// import 'package:ecommerce_app/screens/profile.dart';
// import 'package:ecommerce_app/screens/settings.dart';
// import 'package:flutter/material.dart';

// class Navbar extends StatefulWidget {
//   const Navbar({Key? key}) : super(key: key);

//   @override
//   State<Navbar> createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _currentPage = 0;
//   static final List<Widget> pages = [Home(), Favourite(), About(), Settings()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomBar(
//         items: <BottomBarItem>[
//           BottomBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             activeColor: Colors.blue,
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.favorite),
//             title: Text('Favorites'),
//             activeColor: Colors.red,
//             darkActiveColor: Colors.red.shade400, // Optional
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Account'),
//             activeColor: Colors.greenAccent.shade700,
//             darkActiveColor: Colors.greenAccent.shade400, // Optional
//           ),
//           BottomBarItem(
//             icon: Icon(Icons.settings),
//             title: Text('Settings'),
//             activeColor: Colors.orange,
//           ),
//         ],
//         onTap: (int index) {
//           setState(() {
//             _currentPage = index;
//           });
//         },
//         selectedIndex: _currentPage,
//       ),
//       body: pages.elementAt(_currentPage),
//     );
//   }
// }
