import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/forgot_password_page.dart';
import 'package:flutter_netflix_ui/netFlix_Main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const pageName = '/LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    final ClientHeight = ScreenHeight - kToolbarHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                child: Image.asset(
                  'assets/images/Netflix-icon.png',
                ),
              )),
          SizedBox(
            height: ClientHeight * 0.02,
            width: ScreenWidth * 0.5,
            child: const FittedBox(
              child: Text(
                'Start your free 30 days trial',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: ClientHeight * 0.1,
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: const Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                      ),
                      labelText: 'Enter Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: 'i.e usman@....',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    //_email = value;
                  },
                ),
                SizedBox(
                  height: ClientHeight * 0.05,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      labelText: 'Enter password',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: 'i.e 123....',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    //  _password = value;
                  },
                ),
                SizedBox(
                  height: ClientHeight * 0.02,
                ),
                TextButton(
                  onPressed: () {
                    NavigateForgotPage();
                  },
                  child: SizedBox(
                    width: ScreenWidth * 0.3,
                    height: ClientHeight * 0.02,
                    child: const FittedBox(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.1,
                ),
                ElevatedButton(
                    onPressed: () {
                      NavigateNetflixMAinPage();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: SizedBox(
                      height: ScreenHeight * 0.028,
                      child: const FittedBox(
                        child: Text(
                          'Log in',
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  void NavigateForgotPage() {
    Navigator.of(context).pushNamed(ForgotPasswordPage.pageName);
  }

  void NavigateNetflixMAinPage() {
    Navigator.of(context).pushNamed(NetflixMainPage.pageName);
  }
}
