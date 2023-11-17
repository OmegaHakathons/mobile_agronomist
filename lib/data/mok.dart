import '../models/card_type.dart';
import '../models/passenger.dart';
import '../models/tariff.dart';

final Passenger passenger = Passenger(
  name: 'Виталий Владимирович',
  bday: DateTime(2004, 1, 31),
  tariff: const Tariff(name: 'Социальный', sale: 49),
  cardNumber: '2202-10**-****-3325',
  cardType: CardType.bank,
);
