import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/pin_auth_cubit.dart';
import 'pin_button_with_event.dart';

class NumPad extends StatelessWidget {
  const NumPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Flexible(
            child: Row(
              children: [
                PinButtonWithEvent(num: 1),
                PinButtonWithEvent(num: 2),
                PinButtonWithEvent(num: 3),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Flexible(
            child: Row(
              children: [
                PinButtonWithEvent(num: 4),
                PinButtonWithEvent(num: 5),
                PinButtonWithEvent(num: 6),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Flexible(
            child: Row(
              children: [
                PinButtonWithEvent(num: 7),
                PinButtonWithEvent(num: 8),
                PinButtonWithEvent(num: 9),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Flexible(
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                const PinButtonWithEvent(num: 0),
                Expanded(
                    child: IconButton(
                  icon: const Icon(Icons.backspace),
                  onPressed: () {
                    BlocProvider.of<PinAuthCubit>(context).removeNum();
                  },
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
