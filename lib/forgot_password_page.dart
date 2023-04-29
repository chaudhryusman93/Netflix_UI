import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});
  static const pageName = 'Forgot password page';

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
        title: Text('Forgot password'),
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
                'Dont worry',
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
                  height: ScreenHeight * 0.1,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: SizedBox(
                      height: ScreenHeight * 0.028,
                      child: const FittedBox(
                        child: Text(
                          'Forgot password',
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
}
