import 'package:flutter/material.dart';
import 'widgets/num_pad.dart';
import 'widgets/pin_main_part.dart';

class PinPage extends StatelessWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 2, child: PinMainPart()),
            Expanded(flex: 3, child: NumPad()),
          ],
        ),
      ),
    );
  }
}
