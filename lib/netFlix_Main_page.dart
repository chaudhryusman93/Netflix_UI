import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/HomeScreen.dart';
import 'package:flutter_netflix_ui/Netflix_Names&pics.dart';

import 'package:flutter_netflix_ui/detail_list.dart';
import 'package:flutter_netflix_ui/download.dart';
import 'package:flutter_netflix_ui/gamePage.dart';
import 'package:flutter_netflix_ui/scenesPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'detail_page.dart';

class NetflixMainPage extends StatefulWidget {
  const NetflixMainPage({super.key});
  static const pageName = '/Netflix Main page';

  @override
  State<NetflixMainPage> createState() => _NetflixMainPageState();
}

class _NetflixMainPageState extends State<NetflixMainPage> {
  String dropdownValue = 'catagories';
  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    final ClientHeight = ScreenHeight - kToolbarHeight;

    final List<Widget> pages = [
      HomeScreen(),
      GamesPage(),
      ScenePage(),
      DownloadPage(),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currenIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: GNav(
          duration: const Duration(milliseconds: 500),
          activeColor: Colors.white,
          backgroundColor: Colors.black,
          selectedIndex: currenIndex,
          onTabChange: (value) {
            setState(() {
              currenIndex = value;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.search,
              text: 'search',
              iconColor: Colors.white54,
            ),
            GButton(
              icon: Icons.games_outlined,
              text: 'games',
              iconColor: Colors.white54,
            ),
            GButton(
              icon: Icons.screenshot_monitor_rounded,
              text: 'scenes',
              iconColor: Colors.white54,
            ),
            GButton(
              icon: Icons.download_for_offline_outlined,
              text: 'download',
              iconColor: Colors.white54,
            )
          ],
        ),
      ),
    );
  }
}

// Drop down button code
  // ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //         primary: Colors
                          //             .amber), //Elevated Button Background
                          //     onPressed:
                          //         () {}, //make onPressed callback empty
                          //     child: DropdownButton<String>(
                          //       value: dropdownValue,
                          //       onChanged: (value) {},
                          //       // onChanged: (String newValue) {
                          //       //   setState(() {
                          //       //     dropdownValue = newValue;
                          //       //   });
                          //       // },
                          //       items: <String>[
                          //         'Option 1',
                          //         'Option 2',
                          //         'Option 3',
                          //         'Option 4'
                          //       ].map<DropdownMenuItem<String>>(
                          //           (String value) {
                          //         return DropdownMenuItem<String>(
                          //           value: value,
                          //           child: Text(value),
                          //         );
                          //       }).toList(),
                          //     ))

                          // DropdownButtonFormField<String>(
                          //   decoration: InputDecoration(
                          //     // contentPadding:
                          //     //     EdgeInsets.symmetric(horizontal: 16.0),
                          //     filled: true,
                          //     fillColor: Colors.pink,
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(2.0),
                          //     ),
                          //   ),
                          //   value: dropdownValue,
                          //   onChanged: (value) {},
                          //   // onChanged: (String newValue) {
                          //   //   setState(() {
                          //   //     dropdownValue = newValue;
                          //   //   });
                          //   // },
                          //   items: <String>[
                          //     'Option 1',
                          //     'Option 2',
                          //     'Option 3',
                          //     'Option 4'
                          //   ].map<DropdownMenuItem<String>>((String value) {
                          //     return DropdownMenuItem<String>(
                          //       value: value,
                          //       child: Text(value),
                          //     );
                          //   }).toList(),
                          // )




// Bottom navigation bar without Animation
   // bottomNavigationBar: SizedBox(
      //   height: ClientHeight * 0.089,
      //   child: BottomNavigationBar(
      //     selectedFontSize: 10,
      //     unselectedFontSize: 10,
      //     currentIndex: 0,
      //     elevation: 2,
      //     showUnselectedLabels: true,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white,
      //     items: [
      //       BottomNavigationBarItem(
      //         backgroundColor: Colors.black,
      // icon: IconButton(
      //   onPressed: () {},
      //   icon: Icon(Icons.search),
      // ),
      //         label: 'Explore',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.games),
      //         ),
      //         label: 'games',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.screenshot_monitor_sharp),
      //         ),
      //         label: 'Scenes',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.download_for_offline_outlined),
      //         ),
      //         label: 'Downloads',
      //       ),
      //     ],
      //   ),