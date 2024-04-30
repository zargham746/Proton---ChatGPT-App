import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onpress;
  final String buttonLabel;
  const CustomGradientButton({
    Key? key,
    required this.onpress,
    required this.buttonLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.5, 0.9],
          colors: [
            Color(0xff90278e),
            Color(0xff6b2c90),
            Color(0xff2c2365),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          elevation: 0,
          fixedSize: Size(MediaQuery.of(context).size.width, 60),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          buttonLabel,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
