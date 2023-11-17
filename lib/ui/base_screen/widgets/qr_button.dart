import 'dart:developer';

import 'package:ekzh/cubits/card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../../../common/navigation/route_name.dart';
import '../../../common/theme/app_colors.dart';
import '../../../cubits/app_cubit.dart';
import '../../../models/work.dart';

class QRButton extends StatefulWidget {
  const QRButton({
    super.key,
  });

  @override
  State<QRButton> createState() => _QRButtonState();
}

class _QRButtonState extends State<QRButton> {
  @override
  void initState() {
    super.initState();
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      log(tag.data.toString());
      if (BlocProvider.of<AppCubit>(context).state.currentWork ==
          Work.process) {
        final card = await BlocProvider.of<CardCubit>(context)
            .getCardByNumber(2200100000000002);
        log(card.toString());
        context.pushNamed(RouteName.passenger, extra: card);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 32,
      onTap: () {
        context.pushNamed(RouteName.qr);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.blueLight, AppColors.greenLight],
          ),
        ),
        child: SvgPicture.asset(
          'assets/images/qr.svg',
          height: 64,
        ),
      ),
    );
  }
}
