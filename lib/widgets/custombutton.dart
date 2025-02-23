import 'package:flutter/material.dart';
import '../consts/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.ontap,
    required this.buttontext,
    this.isEnabled = true,
  });
  final VoidCallback ontap;
  final bool isEnabled;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isEnabled ? Theme.of(context).primaryColor : Colors.grey, // Change color if disabled
      borderRadius: BorderRadius.circular(Consts.BORDER_RADIUS),
      child: InkWell(
        onTap: isEnabled ? ontap : null, // Only respond to taps if enabled
        borderRadius: BorderRadius.circular(Consts.BORDER_RADIUS),
        child: Center(
          heightFactor: 3,
          child: Text(buttontext,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}