import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),

            // shop name
            Text(
              'SUSHI MANIA',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/sushi.png'),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              'THE TAST OF JAPANESE FOOD IN PAKISTAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 34,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // subtitle
            Text(
                'Feel the taste of the most popular japanese food from anywhere and anytime in Pakistan',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 1.5,
                )),

            const SizedBox(height: 25),

            // get started button

            const MyButton(text: 'Get Started')
          ],
        ),
      ),
    );
  }
}
