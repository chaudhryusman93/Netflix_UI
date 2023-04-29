import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Netflix_Names&pics.dart';
import 'detail_list.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});
  static const pageName = '/Games page';

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  final TextEditingController _searchController = TextEditingController();
  String dropdownValue = 'catagories';

  @override
  Widget build(BuildContext context) {
    List<DetailList> moviesList = [
      DetailList(title: 'Games', list: [
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/oxenfree.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/intoTheBreach.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/extraction.jpg'),
      ]),
      DetailList(title: 'New games', list: [
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/intoTheBreach.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/venom.jpg')
      ]),
      DetailList(title: 'Trending', list: [
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg')
      ]),
      DetailList(title: 'Up comming', list: [
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/beforeyourEye.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/battle.jpg'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/money.webp'),
        NameAndPictures(name: ' Movies', imagePath: 'assets/images/pablo.jpg'),
        NameAndPictures(
            name: ' Movies', imagePath: 'assets/images/grayMan.webp')
      ]),
    ];

    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    final ClientHeight = ScreenHeight - kToolbarHeight;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: ScreenHeight * 0.17,
              backgroundColor: Colors.black.withOpacity(0.4),
              title: SizedBox(
                width: ScreenWidth * 0.9,
                height: ClientHeight * 0.06,
                child: TextField(
                  controller: _searchController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search...',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onChanged: (value) {
                    // Perform search functionality here
                  },
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(
                    top: ClientHeight * 0.05, left: ScreenWidth * 0.9),
                background: Container(
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text('Tv show'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text('Movies'),
                          ),
                          ElevatedButton.icon(
                            label: const Text('Categories'),
                            icon: const Icon(Icons.arrow_drop_down),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: moviesList.length,
                    (context, index) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: ClientHeight * 0.01,
                                // right: ScreenWidth * 0.003,
                                // top: ClientHeight * 0
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: Text(
                                    moviesList[index].title,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: ScreenWidth * 0.03,
                              ),
                              height: ClientHeight * 0.25,
                              width: ScreenWidth,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: moviesList[index].list.length,
                                itemBuilder: (context, innerIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      moviesList[index]
                                          .list[innerIndex]
                                          .imagePath,
                                      fit: BoxFit.fill,
                                      width: ScreenWidth * 0.45,
                                      // height: ClientHeight * 0.01,
                                    ),
                                  );
                                },
                              ),
                            )

                            // Image.asset(moviesList[index].imagePath)
                          ],
                        ))),
          ],
        ),
      ),
    );
  }
}
