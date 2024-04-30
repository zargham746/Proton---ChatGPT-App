import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 20,
      ),
      child: SizedBox.square(
        child: Image.asset('assets/icons/proton_128.png'),
      ),
    );
  }
}
