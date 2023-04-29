import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/login_page.dart';
import 'package:flutter_netflix_ui/route.dart';
import 'package:flutter_netflix_ui/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      routes: {
        MyHomePage.pageName: (context) => const MyHomePage(title: 'Home page')
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  static const pageName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    // final ClientHeight = ScreenHeight - kToolbarHeight;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: ScreenHeight * 0.15,
              left: ScreenWidth * 0.13,
              child: CircleAvatar(
                backgroundImage:
                    const AssetImage('assets/images/netflix_cover.webp'),
                maxRadius: ScreenHeight * 0.17,
                child: Opacity(
                  opacity: 0.75,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: ScreenWidth * 0.5,
                          child: const FittedBox(
                            child: Text(
                              'NETFLIX',
                              style: TextStyle(
                                  color: Colors.red,
                                  // fontSize: ScreenHeight * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: ScreenWidth * 0.35,
                            child: FittedBox(child: Text('See what is next.'))),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: ScreenWidth * 0.4,
              top: ScreenHeight * 0.6,
              child: ElevatedButton(
                  onPressed: () {
                    NavigateForSignUpPage();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: SizedBox(
                    height: ScreenHeight * 0.028,
                    child: FittedBox(
                      child: Text(
                        'Sign up',
                      ),
                    ),
                  )),
            ),
            Positioned(
              left: ScreenWidth * 0.4,
              top: ScreenHeight * 0.68,
              child: ElevatedButton(
                  onPressed: () {
                    NavigateForLoginPage();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: SizedBox(
                    height: ScreenHeight * 0.028,
                    child: FittedBox(
                      child: Text(
                        'Log in  ',
                      ),
                    ),
                  )),
            )

            // Positioned(
            //   left: ScreenWidth * 0.35,
            //   top: ScreenHeight * 0.28,
            //   child: Opacity(
            //     opacity: 1,
            //     child: Container(
            //       color: Colors.black.withOpacity(0.6),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             'NETFLIX',
            //             style: TextStyle(
            //                 color: Colors.red,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: ScreenWidth * 0.1),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  void NavigateForSignUpPage() {
    Navigator.of(context).pushNamed(SignUpPage.pageName);
  }

  void NavigateForLoginPage() {
    Navigator.of(context).pushNamed(LoginPage.pageName);
  }
}
