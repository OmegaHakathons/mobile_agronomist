import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/pin_auth_cubit.dart';
import 'button_of_num_pad.dart';

class PinButtonWithEvent extends StatelessWidget {
  final int num;
  const PinButtonWithEvent({
    super.key,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonOfNumPad(
        num: num,
        onPressed: () {
          BlocProvider.of<PinAuthCubit>(context).addNum(num, context);
        },
      ),
    );
  }
}
