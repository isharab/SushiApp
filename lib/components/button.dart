import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 135, 81, 77),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
