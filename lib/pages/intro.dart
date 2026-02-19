import 'package:coba/pages/login.dart';
import 'package:coba/pages/register.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/introbg.png"),
                fit: BoxFit.cover)),

        //gambar sekolah
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Image.asset(
              "assets/img/gambar intro.png",
              width: 350,
              height: 350,
            ),
            //text
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.all(5),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            'Halo selamat datang di aplikasi Problem Stduent kami akan membantu guru di sekolah untuk melaporkan siswa saat melakukan pelanggaran agar siswa siswa selalu displin mengikuti aturan sekolah dengan taat!',
                        style: TextStyle(
                            fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Colors.black,
                            letterSpacing: 1)),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //button pertama

                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => register()));
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 234, 226, 226),
                      onPrimary: Colors.black,
                      minimumSize: Size(300, 60),
                      shadowColor: Colors.black,
                      shape: StadiumBorder(),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  //button login
                  Padding(padding: EdgeInsets.only(top: 16)),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => login(),
                        ),
                      );
                    },
                    icon: Icon(Icons.login),
                    label: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      minimumSize: Size(300, 60),
                      shadowColor: Colors.black,
                      shape: StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
