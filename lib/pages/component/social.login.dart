import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '-atau masuk dengan-',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: "assets/font/Poppins-BoldItalic.ttf",
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            // google
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: 14,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                      )
                    ]),
                child: SvgPicture.asset(
                  'assets/img/google.svg',
                  height: 30,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
