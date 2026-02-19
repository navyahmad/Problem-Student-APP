import 'package:flutter/material.dart';

class beranda extends StatefulWidget {
  const beranda({super.key});

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  int _selectedindex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [];

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              new Row(
                children: [
                  const SizedBox(
                    height: 100,
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

                  // buttton akun
                  ElevatedButton(
                    onPressed: () {},
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10),
              )
            ],
            borderRadius: BorderRadius.circular(50)),
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.024),
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 0 : size.width * .029,
                          right: size.width * .0422,
                          left: size.width * .0422,
                        ),
                        width: size.width * .128,
                        height: index == currentIndex ? size.width * .014 : 0,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10))),
                      ),
                      Icon(
                        ListOfIcons[index],
                        size: size.width * .076,
                        color: index == currentIndex
                            ? Colors.orangeAccent
                            : Colors.black38,
                            
                      ),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                )),
      ),
    );
  }

  List<IconData> ListOfIcons = [
    Icons.home_rounded,
    Icons.sort_rounded,
    Icons.people_rounded,
    Icons.data_array_rounded,
  ];
}
