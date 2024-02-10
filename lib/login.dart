import 'package:flutter/material.dart';
import 'package:flutter_application_interviewwww/api.dart';
import 'package:flutter_application_interviewwww/signup.dart';



class Login extends StatefulWidget {
  String? id;
  String? pass;
  Login({super.key, required this.id, required this.pass});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(child: Text("Api Collection")),
        Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          height: 409,
          width: 309,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: widget.id),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: widget.pass),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Api(),
                        ));
                  },
                  child: InkWell(
                    onTap: () {
                      if (widget.id == widget.id &&
                          widget.pass == widget.pass) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Api(),
                            ));
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      height: 46,
                      width: 290,
                      child: Center(child: Text('Login')),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Row(
                  children: [
                    Text('Create an accont'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sign(),
                            ));
                      },
                      child: Text(
                        '?signup',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
