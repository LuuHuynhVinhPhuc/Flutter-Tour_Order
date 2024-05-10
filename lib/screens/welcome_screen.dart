import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/screens/home_page.dart';
import 'package:travelapp/widgets/youtube.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // left screen
                children: [
                  const Text(
                    "Tận hưởng",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Những chuyến đi của bạn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Hãy đến với chúng tôi, bạn sẽ có cơ hội trải nghiệm những chuyến đi thú vị",
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
