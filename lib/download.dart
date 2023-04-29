import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});
  static const pageName = '/Download page';

  @override
  State<DownloadPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DownloadPage> {
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
        child: Center(
          child: Column(
            children: [
              Container(
                height: ClientHeight * 0.5,
                width: ScreenWidth * 0.4,
                child: Image.asset('assets/images/Netflix-icon.png'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: SizedBox(
                    height: ClientHeight * 0.03,
                    width: ScreenWidth * 0.4,
                    child: const FittedBox(child: Text('Download'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
