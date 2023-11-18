import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';
import '../../common/navigation/route_name.dart';
import '../../common/theme/app_colors.dart';
import '../../cubits/app_cubit.dart';
import '../common/logo_text.dart';
import '../common/wrapper.dart';
import 'widgets/auth_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      log(tag.data.toString());
      if (!BlocProvider.of<AppCubit>(context).state.isAuthorized) {
        NfcManager.instance.stopSession();
        context.goNamed(RouteName.pin);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [AppColors.green, AppColors.greenDark])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Wrapper(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // const LogoText(),
                  Text(
                    'ЛОГО + НАЗВАНИЕ',
                    style: TextStyle(fontSize: 32),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Вход в личный кабинет',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Для входа в личный кабинет приложите карту или авторизуйтесь по логину',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  const AuthForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
