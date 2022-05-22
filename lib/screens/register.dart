import 'package:dcslab_mobile/screens/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SingleChildScrollView(
                    child: Column(children: [
                  const SizedBox(height: 45),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('images/g_logo.png'),
                  ),
                  const Text('DCSLab',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          color: Colors.black)),
                  const SizedBox(
                    height: 75,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'GitzJoey',
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'gitzjoey@dcslab.com',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: '******************'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        hintText: '******************'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.blue,
                            fontSize: 15),
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                          fontSize: 15),
                    ),
                  )
                ])))));
  }
}
