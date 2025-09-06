
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 127, 243, 177),
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 50),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
      ),
      onPressed: () {},
      child: Text('Log In'),
    );
  }
}
