import 'package:flutter/material.dart';
import 'package:proj_1/util/my_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // scroll view
      child: SingleChildScrollView(
        // column
        child: Column(
          children: [
            // keep space
            SizedBox(
              height: 30.0,
            ),

            // Image show
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),

            // Text
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Login username password
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),

              // Username pwd
              child: Column(
                children: [
                  TextFormField(
                    // on chnage call back
                    onChanged: (text) {
                      print(text);
                      setState(() {
                        name = text;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),

                  // space
                  SizedBox(
                    height: 20.0,
                  ),

                  // Animated button now.
                  InkWell(
                    onTap: () async {
                      setState(() {
                        tap = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoute.testRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: tap ? 45 : 100.0,
                      height: 45.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: tap ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular(5),
                      ),
                      child: tap
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 17.0, color: Colors.white),
                            ),
                    ),
                  ),

                  // button

                  // ElevatedButton(
                  //   onPressed: () {
                  //     print('login pressed');
                  //     Navigator.pushNamed(context, MyRoute.testRoute);
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(minimumSize: Size(100.0, 40.0)),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
