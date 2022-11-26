import 'package:flutter/material.dart';

import '../Widgets/animatoni.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: topPadding),
                      SizedBox(height: 10),
                      AnimatedImage(),
                    ],
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "username",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.remove_red_eye),
                            hintText: "password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(children: [
                          Text("if you haven't account "),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("SingUp");
                            },
                            child: Text(
                              'click here',
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ]),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("HomePage");
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
