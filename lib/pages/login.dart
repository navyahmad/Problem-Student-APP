import 'package:coba/pages/homepage.dart';
import 'package:coba/pages/intro.dart';
import 'package:coba/pages/component/text.form.global.dart';
import 'package:coba/pages/rumah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatelessWidget {
  login({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Intro()));
                },
                child: Image.asset(
                  "assets/img/arrow.png",
                  color: Colors.white,
                  height: 30,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(60, 40),
                  shape: CircleBorder(),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 35,
                      fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login akun anda',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // Input email
              TextFormGlobal(
                controller: emailController,
                text: 'Username',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 10,
              ),
              // password input
              TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true),

              const SizedBox(
                height: 30,
              ),

              // sign in
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const rumah()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                        fontWeight: FontWeight.w300,
                        fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                    minimumSize: Size(200, 60),
                    shadowColor: Colors.black,
                    shape: StadiumBorder(),
                  ),
                ),
              ),

              // login google
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: '-Atau Login Dengan-',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                            fontSize: 14,
                            fontWeight: FontWeight.w100))),
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/img/google.svg',
                    height: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(90, 60),
                    shape: CircleBorder(),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account?',
            ),
            InkWell(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
