import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

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
            "Login Here",
            style: TextStyle(
              fontSize: 30.0,
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

                // button
                ElevatedButton(
                  onPressed: () {
                    print('login pressed');
                  },
                  child: Text('Login'),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
