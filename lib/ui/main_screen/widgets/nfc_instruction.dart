import 'package:flutter/material.dart';

class NFCInstruction extends StatelessWidget {
  final bool isOn;
  const NFCInstruction({
    super.key,
    required this.isOn,
  });

  @override
  Widget build(BuildContext context) {
    return isOn
        ? Column(
            children: [
              Image.asset('assets/images/nfc.png'),
              Text(
                'Приложите карту к телефону или отсканируйте QR-код, нажав на кнопку внизу',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          )
        : Column(
            children: [
              Image.asset('assets/images/nfc_off.png'),
              Text(
                'Включите NFC или отсканируйте QR-код, нажав на кнопку внизу',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          );
  }
}
