import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/app_colors.dart';
import '../../../cubits/pin_auth_cubit.dart';
import '../../../models/pin_auth_status.dart';
import '../../../models/state/pin_auth_state.dart';
import 'pin_sphere.dart';

class PinMainPart extends StatelessWidget {
  const PinMainPart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PinAuthCubit, PinAuthState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Введите PIN-код',
                style: Theme.of(context).textTheme.headlineLarge),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  4,
                  (index) => PinSphere(
                        input: index < state.getCountOfPin,
                        color: state.pinStatus == PinAuthStatus.failed
                            ? AppColors.error
                            : AppColors.greenDark,
                      )),
            ),
          ],
        );
      },
    );
  }
}
