import 'package:flutter/material.dart';

import '../component/my_button.dart';
import '../component/my_textfield.dart';
import '../component/style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.topRight,
                decoration:  const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Objects.png'))),
                child: Image.asset('assets/images/signup.png',height: 220,)),
            Positioned(
              top: 218,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 37,right: 20,left: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(179, 121, 223, 0.5),
                        Color.fromRGBO(204, 88, 84, 0.08),
                        Color.fromRGBO(179, 121, 223, 0.8)
                      ]
                  ),),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'GET STARTED FREE',textAlign: TextAlign.center,
                        style: titleStyle,
                      ),
                      const Text(
                        'Free Forever. No Credit Card Needed',textAlign: TextAlign.center,
                      ),
                      const MyTextField(
                        hintText: 'yourname@gmail.com',
                        label: 'Email Address',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      const MyTextField(
                        hintText: '@yourname',
                        label: 'Your Name',
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      const MyTextField(
                          hintText: 'Password',
                          label: 'Password',
                          prefixIcon: Icon(Icons.vpn_key_outlined),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(onPressed: (){},child: const Text('Forgot Password?'),),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: MyButton(text: 'Sign up'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 1,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Color.fromRGBO(217, 217, 217, 1),
                                      Color.fromRGBO(217, 217, 217, 0)
                                    ])),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            child: Text('Or continue with'),
                          ),
                          Container(
                            width: 70,
                            height: 1,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromRGBO(217, 217, 217, 1),
                                      Color.fromRGBO(217, 217, 217, 0)
                                    ])),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUpPage()))
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromRGBO(255, 255, 255, 0.5),
                                        Color.fromRGBO(255, 255, 255, 0.1)
                                      ])),
                                  child: Image.asset(
                                    'assets/images/google.png',
                                    width: 30,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: GestureDetector(
                                child: Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.grey),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(255, 255, 255, 0.5),
                                          Color.fromRGBO(255, 255, 255, 0.1)
                                        ])),
                                    child: Image.asset(
                                      'assets/images/apple.png',
                                      width: 30,
                                    )),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromRGBO(255, 255, 255, 0.5),
                                        Color.fromRGBO(255, 255, 255, 0.1)
                                      ])),
                                  child: Image.asset(
                                    'assets/images/facebook.png',
                                    width: 30,
                                  )),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
