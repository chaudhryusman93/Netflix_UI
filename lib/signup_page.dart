import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/login_page.dart';

import 'netFlix_Main_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const pageName = '/SignUpPage';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        title: Text('Sign up'),
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
                'Enjoy the world of entertainment.',
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
                          'Sign up',
                        ),
                      ),
                    )),
                TextButton(
                  onPressed: () {
                    NavigateLoginPAge();
                  },
                  child: SizedBox(
                    width: ScreenHeight * 0.25,
                    height: ClientHeight * 0.05,
                    child: const FittedBox(
                      child: Text(
                        'Already have an account? Log In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void NavigateNetflixMAinPage() {
    Navigator.of(context).pushNamed(NetflixMainPage.pageName);
  }

  void NavigateLoginPAge() {
    Navigator.of(context).pushNamed(LoginPage.pageName);
  }
}





















// import 'package:flutter/material.dart';

// class NetflixSignUpPage extends StatefulWidget {
//   @override
//   _NetflixSignUpPageState createState() => _NetflixSignUpPageState();
// }

// class _NetflixSignUpPageState extends State<NetflixSignUpPage> {
//   final _formKey = GlobalKey<FormState>();

//   String _name = '';
//   String _email = '';
//   String _password = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(height: 32),
//               Text(
//                 'Sign Up for Netflix',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 32),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _name = value!;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _email = value!;
//                 },
//               ),
//               SizedBox(height: 16),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _password = value!;
//                 },
//               ),
//               SizedBox(height: 32),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Sign Up'),
//               ),
//               SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {},
//                 child: Text('Already have an account? Sign In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
