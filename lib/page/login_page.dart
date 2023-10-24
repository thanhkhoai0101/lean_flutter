import 'package:flutter/material.dart';
import 'package:login_flutter/component/my_button.dart';
import 'package:login_flutter/component/my_textfield.dart';
import 'package:login_flutter/component/style.dart';
import 'package:login_flutter/component/theme_inherited.dart';
import 'package:login_flutter/page/signup_page.dart';
import 'package:login_flutter/theme/theme_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    // Cái này lấy dữ liệu từ trong class ThemeInherited được khởi tạo ở class MyApp
    //  Trước khi gọi login page
    ThemeManager? themeManager = context
        .dependOnInheritedWidgetOfExactType<ThemeInherited>()
        ?.themeManager;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              //  chiều cao của màn hình MediaQuery.of(context).size.height
              //  chiều rộng của màn hình MediaQuery.of(context).size.width
              height: MediaQuery.of(context).size.height,

              // alignment: vị trí item, cũng giống trong html, css thôi
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(

                  //  các hình ảnh được khai báo trong pubspec.yaml ở dòng 62, 63
                  //  cách ảnh được chưa trong thư mục ./assets/images/*
                  // background image
                  image: DecorationImage(
                      image: AssetImage('assets/images/Objects.png'))),

              //  thẻ image
              // Image.asset là lấy ảnh có sẳn trong thư mục và được khai báo ở trong pubspec.yaml
              //  Image.network('url') là lấy ảnh ở trên internet
              // một số thuộc tính của thẻ image như width, height fit .... giống html, css
              child: Image.asset('assets/images/Illustration.png')),

          // thẻ Positioned dùng để chứa item, thẻ này tiện ở stack, như absolute với relative ở html, css
          Positioned(
            top: 218,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 37, right: 20, left: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),

                // màu gradient, (nhiều màu kết hợp lại) theo chiều begin -> end
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(179, 121, 223, 0.2),
                      Color.fromRGBO(204, 88, 84, 0.08),
                      Color.fromRGBO(179, 121, 223, 0.2)
                    ]),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'WELCOME BACK!',
                      textAlign: TextAlign.center,
                      style: titleStyle,
                    ),
                    const Text(
                      'welcome back we missed you',
                      textAlign: TextAlign.center,
                    ),

                    // Widget MyTextField là mình tự tạo để tiện tái sử dụng
                    // Widget này ở trong thư mục component/my_textfield.dart
                    //  hoặc bấm ctrl+click vào widget để dẫn đến trang đó
                    const MyTextField(
                      hintText: 'Username',
                      label: 'Username',
                      prefixIcon: Icon(Icons.person_2_outlined),
                    ),
                    MyTextField(
                      obscureText: obscureText,
                      hintText: 'Password',
                      label: 'Password',
                      prefixIcon: const Icon(Icons.vpn_key_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: obscureText
                              ? const Icon(Icons.remove_red_eye_outlined)
                              : const Icon(Icons.remove_red_eye)),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: MyButton(text: 'Sign In'),
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
                          // một widget sử lý sự kiện onTap
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()))
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(255, 255, 255, 0.2),
                                      Color.fromRGBO(255, 255, 255, 0.22),
                                      Color.fromRGBO(255, 255, 255, 0)
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromRGBO(255, 255, 255, 0.2),
                                        Color.fromRGBO(255, 255, 255, 0.22),
                                        Color.fromRGBO(255, 255, 255, 0)
                                      ])),
                                  child: Image.asset(
                                    'assets/images/apple.png',
                                    width: 30,
                                  )),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(255, 255, 255, 0.2),
                                      Color.fromRGBO(255, 255, 255, 0.22),
                                      Color.fromRGBO(255, 255, 255, 0)
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

      // floatingActionButton nó sẽ hiển thị mặc định ở buttom right
      // mình có thể điều chỉnh vị trí của nó <google nhé>

      // CircleAvatar là một widget có background border radius,
      // có thể điều chỉnh độ rộng của nó bằng thuộc tính radius
      floatingActionButton: CircleAvatar(
        radius: 30,
        child: Tooltip(
          message: 'Change background color',
          child: Switch(
              value: themeManager?.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                themeManager?.toggleTheme(newValue);
              }),
        ),
      ),
    );
  }
}
