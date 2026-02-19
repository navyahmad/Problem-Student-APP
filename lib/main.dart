import 'package:coba/pages/akun.dart';
import 'package:coba/pages/homepage.dart';
import 'package:coba/pages/rumah.dart';
import 'package:coba/pages/splashscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelanggaran siswa',
      home: akun(),
    );
  }
}
