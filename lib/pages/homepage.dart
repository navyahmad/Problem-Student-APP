import 'package:coba/pages/akun.dart';
import 'package:coba/pages/component/searchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                new Row(
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: 'Halo! \nSelamat Datang',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ))),
                    const SizedBox(
                      width: 130,
                    ),
                    Image.asset(
                      "assets/img/logosmk.png",
                      width: 40,
                      height: 40,
                    ),
                    //

                    // buttton akun
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const akun()));
                      },
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(40, 40),
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
                // akhir button akun

                //awal searching
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.orangeAccent, width: 1.4),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Pencarian',
                            style: TextStyle(
                                fontFamily:
                                    "assets/font/Poppins-BoldItalic.ttf",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          )
                        ]),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(25)),
                          height: 40,
                          width: 75,
                          child: const Center(
                            child: Text(
                              'Cari',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily:
                                    "assets/font/Poppins-BoldItalic.ttf",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        //batas searching
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/img/bendera inggris.png"))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
