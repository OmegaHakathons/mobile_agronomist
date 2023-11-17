import 'package:ekzh/cubits/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/state/app_state.dart';
import '../../../models/work.dart';
import 'begin_route.dart';
import 'route_block.dart';
import 'shift_block.dart';

class WorkInfo extends StatelessWidget {
  const WorkInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ShiftBlock(),
                    const SizedBox(height: 20),
                    state.currentWork == Work.paused
                        ? const BeginRoute()
                        : const RouteBlock(),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
