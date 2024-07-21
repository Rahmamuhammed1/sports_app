import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sports_app/homePage/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {

    String email = _emailController.text;
    String password = _passwordController.text;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const  MyHomePage(title: 'Sports App')),
    );
    print('Logging in with: $email, $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF352F44),
                Color(0xFFFAF0E6),
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 36.0,
                    horizontal: 24.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Enter a Beautiful Place",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFAF0E6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFB5ABAD),
                            hintText: "Email",
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFB5ABAD),
                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Implement forget password functionality here
                              },
                              child: const Text(
                                "Forgot password",
                                style: TextStyle(
                                  color: Color(0xFF352F44),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _login,
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              backgroundColor: const Color(0xFF352F44),
                              padding: const EdgeInsets.symmetric(
                                vertical: 18.0,
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),
                        const Text("Don't have an Account? Register now"),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                // Implement Google login functionality here
                              },
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                // Implement Facebook login functionality here
                              },
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.apple,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                // Implement Apple login functionality here
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
