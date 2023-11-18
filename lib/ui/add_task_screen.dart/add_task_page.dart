import 'package:agro_agro/models/task/aggregate.dart';
import 'package:agro_agro/models/task/type_task.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../models/task/car.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  TypeTask? typeTask;
  Car? car;
  Aggregate? aggregate;
  String? field;
  RangeValues currentRangeValues = const RangeValues(8, 22);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Новая задача'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonFormField2<TypeTask>(
                  value: typeTask,
                  hint: const Text('Тип задачи'),
                  items: TypeTask.values
                      .map((e) => DropdownMenuItem<TypeTask>(
                            value: e,
                            child: Text(
                              e.name,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    typeTask = value;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField2<TypeTask>(
                  value: typeTask,
                  hint: const Text('Культура'),
                  items: [],
                  onChanged: (value) {
                    // typeTask = value;
                    // setState(() {});
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField2<Car>(
                  value: car,
                  hint: const Text('Машина'),
                  items: cars
                      .map((e) => DropdownMenuItem<Car>(
                            value: e,
                            child: Text(
                              e.name,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    car = value;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField2<Aggregate>(
                  value: aggregate,
                  hint: const Text('Агрегат'),
                  items: aggregates
                      .map((e) => DropdownMenuItem<Aggregate>(
                            value: e,
                            child: Text(
                              e.name,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    aggregate = value;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField2<String>(
                  value: field,
                  hint: const Text('Поле'),
                  items: fields
                      .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    field = value;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 12),
                if (typeTask == TypeTask.sowing || typeTask == TypeTask.tillage)
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Глубина'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Заполните поле';
                      }
                      return null;
                    },
                  ),
                if (typeTask == TypeTask.protection)
                  TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Расход рабочего раствора'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Заполните поле';
                      }
                      return null;
                    },
                  ),
                const SizedBox(height: 12),
                Text(
                    'Рабочая скорость ${currentRangeValues.start.toInt()}-${currentRangeValues.end.toInt()} км/ч'),
                RangeSlider(
                  max: 22,
                  min: 8,
                  divisions: 7,
                  onChanged: (RangeValues value) {
                    setState(() {
                      currentRangeValues = value;
                    });
                  },
                  values: currentRangeValues,
                  labels: RangeLabels(
                    currentRangeValues.start.round().toString(),
                    currentRangeValues.end.round().toString(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Дата выполнения'),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Заполните поле';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(hintText: 'Коэффициент'),
                ),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(hintText: 'Комментарий'),
                  maxLines: 4,
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }
                        },
                        child: Text('Создать задачу'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List<Car> cars = [
  Car(id: 1, name: 'RSM 3575', number: 'E196KB196'),
  Car(id: 2, name: 'RSM 2400', number: 'K606AK66'),
  Car(id: 3, name: 'RSM 2375', number: 'T123AK45'),
  Car(id: 4, name: 'К-742', number: 'O001OO777'),
];

const List<Aggregate> aggregates = [
  Aggregate(id: 1, name: 'Amazone DMC 9000', number: '5'),
  Aggregate(id: 2, name: 'Amazone Citan 12000', number: '123'),
  Aggregate(id: 3, name: 'Bourgault 3275', number: '7'),
  Aggregate(id: 4, name: 'Bourgault 5810', number: '6'),
];

const List<String> fields = ['П-51', 'А-122-АБ', '	А-121-АБ', 'А-230-АБ'];
