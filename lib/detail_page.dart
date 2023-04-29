import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  static const pageName = '/Details page';

  @override
  State<DetailsPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    final ClientHeight = ScreenHeight - kToolbarHeight;
    var _searchController;
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: ClientHeight * 0.1,
              left: ScreenWidth * 0.1,
              child: Container(
                height: ClientHeight * 0.6,
                width: ScreenWidth * 0.8,
                child: Image.asset(
                  'assets/images/lucifer.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: ClientHeight * 0.6,
              left: ScreenWidth * 0.18,
              child: Row(
                children: [
                  ButtonBar(
                    children: [
                      SizedBox(
                        width: ScreenWidth * 0.3,
                        child: ElevatedButton.icon(
                          label: const Text(
                            'Play',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: const Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.3,
                        child: ElevatedButton.icon(
                          label: const Text(
                            'My list',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: const Icon(
                            Icons.check,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: ClientHeight * 0.75,
                left: ScreenWidth * 0.1,
                child: Text(
                  'Lucifer Season 2018\nThe complete season\nand awesome story',
                  style: TextStyle(
                      color: Colors.white, fontSize: ClientHeight * 0.04),
                ))
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.black,
      //   child: GNav(
      //     duration: const Duration(milliseconds: 500),
      //     activeColor: Colors.white,
      //     backgroundColor: Colors.black,
      //     onTabChange: (index) => setState(() => currentIndex = index),
      //     selectedIndex: currentIndex,
      //     tabs: const [
      //       GButton(
      //         icon: Icons.search,
      //         text: 'search',
      //         iconColor: Colors.white54,
      //       ),
      //       GButton(
      //         icon: Icons.games_outlined,
      //         text: 'games',
      //         iconColor: Colors.white54,
      //       ),
      //       GButton(
      //         icon: Icons.screenshot_monitor_rounded,
      //         text: 'scenes',
      //         iconColor: Colors.white54,
      //       ),
      //       GButton(
      //         icon: Icons.download_for_offline_outlined,
      //         text: 'download',
      //         iconColor: Colors.white54,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
