import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomGradientLoadingButton extends StatelessWidget {
  final VoidCallback onpress;
  const CustomGradientLoadingButton({
    Key? key,
    required this.onpress,
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
          stops: [0.3, 0.9],
          colors: [
            Color(0xff90278e),
            Color(0xff6b2c90),
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
        child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white, size: 24),
      ),
    );
  }
}
