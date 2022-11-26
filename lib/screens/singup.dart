import 'package:flutter/material.dart';

import '../Widgets/animatoni.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Center(
                //   child: Image.asset("assets/images/SharedScreenshot.jpg"),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20, right: 120.0, top: 25),
                //   child: Text(
                //     'What would you like to find ?',
                //     style: TextStyle(
                //       fontSize: 30,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
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
                  "Create Acount",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  padding: EdgeInsets.all(22),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "user",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              hintText: "Mail",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1))),
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
                            Text("if you have account "),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("Login");
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
                              "Create Acount",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
