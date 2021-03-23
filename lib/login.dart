import 'dart:developer';
import 'Models/Server.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({
    Key key,
  }) : super(key: key);

  final username = TextEditingController();
  final password = TextEditingController();

  void login() {
    Server server = new Server();

    var success = server.login(username.text, password.text);

    success.whenComplete(() => print(success.toString()));
  }

  void register() {
    // manger function is server
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D416F),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Center(
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: username,
              decoration: InputDecoration(
                labelText: "Username",
                fillColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF21E6C1),
                    ),
                    child: Text('register'),
                    onPressed: () => {register()},
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF21E6C1),
                    ),
                    child: Text('Login'),
                    onPressed: () => {login()},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
