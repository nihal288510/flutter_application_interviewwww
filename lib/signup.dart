import 'package:flutter/material.dart';

import 'package:flutter_application_interviewwww/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  var name = TextEditingController();
  var number = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Container(
              height: 543,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Enter the  name"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 226, 251, 189),
                                blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'enter the name'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Enter the Number'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter the number'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Email'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter the email'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Enter the password'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter password'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: InkWell(
                      onTap: () {
                        if (widget != null)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Login(id: name.text, pass: password.text),
                              ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        height: 46,
                        width: 290,
                        child: Center(child: Text('Sign up')),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 100, right: 80),
                      child: Text('back to home'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> Data() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('name', name.text);
    data.setString('pass', password.text);
    data.setString('email', email.text);
    data.setString('password', password.text);
  }
}
