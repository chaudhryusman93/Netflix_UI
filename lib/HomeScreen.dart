import 'package:flutter/material.dart';

import 'Netflix_Names&pics.dart';
import 'detail_list.dart';
import 'detail_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<DetailList> moviesList = [
    DetailList(title: 'Latest Movies', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/heeramandi.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/extraction.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/enola holmes.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/grayMan.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/venom.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/extraction.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/extraction.jpg'),
    ]),
    DetailList(title: 'seasons', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/peaky.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/sexEducation.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/pablo.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/venom.jpg')
    ]),
    DetailList(title: 'Trending', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/lucifer.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/peaky.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/lucifer.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/heeramandi.jpg')
    ]),
    DetailList(title: 'Latest Movies', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/obsession.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/lucifer.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/pablo.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/grayMan.webp')
    ]),
    DetailList(title: 'Suggesion for you', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/venom.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/grayMan.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/heeramandi.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/pablo.jpg')
    ]),
    DetailList(title: 'New Movies', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/pablo.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/she.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/obsession.jpg')
    ]),
    DetailList(title: 'Comming soon', list: [
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/lucifer.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/obsession.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/money.webp'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/lucifer.jpg'),
      NameAndPictures(
          name: 'Latest Movies', imagePath: 'assets/images/heeramandi.jpg')
    ])
  ];
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    final ClientHeight = ScreenHeight - kToolbarHeight;
    return SafeArea(
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
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(DetailsPage.pageName);
                              },
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
                            ),
                          )

                          // Image.asset(moviesList[index].imagePath)
                        ],
                      ))),
        ],
      ),
    );
  }
}
