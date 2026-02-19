import 'package:coba/pages/homepage.dart';
import 'package:coba/pages/rumah.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class akun extends StatelessWidget {
  const akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const rumah()));
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
                'Akun',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 35,
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // pembuatan isi akun

            itemProfile('Nama', 'Navy Ahmad', CupertinoIcons.person),
            const SizedBox(
              height: 10,
            ),
            itemProfile('Email', 'ahmadnavy826@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 10,
            ),
            itemProfile('Sandi', '****', CupertinoIcons.padlock),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    backgroundColor: Colors.orangeAccent),
                child: const Text(
                  'Edit Profil',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    backgroundColor: Colors.red),
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.orangeAccent.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(
          title,
        ),
        subtitle: Text(
          subtitle,
        ),
        leading: Icon(iconData),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.grey,
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
