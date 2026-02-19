import 'package:coba/pages/data.dart';
import 'package:coba/pages/homepage.dart';
import 'package:coba/pages/kelas.dart';
import 'package:coba/pages/pelanggaran.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class rumah extends StatefulWidget {
  const rumah({super.key});

  @override
  State<rumah> createState() => _rumahState();
}

class _rumahState extends State<rumah> {
  int navBarIndex = 0;

  List navBody = [
    const home(),
    const kelas(),
    const pelanggaran(),
    const data(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navBarIndex],
      bottomNavigationBar: SizedBox(
        height: 78,
        child: Container(
          color: Colors.orangeAccent,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: GNav(
              backgroundColor: Colors.orangeAccent,
              tabBackgroundColor: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Beranda',
                  textStyle: TextStyle(
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GButton(
                  icon: Icons.people_alt_outlined,
                  text: 'Kelas',
                  textStyle: TextStyle(
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GButton(
                  icon: Icons.short_text_outlined,
                  text: 'Pelanggaran',
                  textStyle: TextStyle(
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GButton(
                  icon: Icons.data_exploration_outlined,
                  text: 'Data',
                  textStyle: TextStyle(
                    fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
              selectedIndex: navBarIndex,
              onTabChange: (index) {
                setState(() {
                  navBarIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
