import 'package:flutter/material.dart';

class SetSettingsWidget extends StatefulWidget {
  SetSettingsWidget({super.key});

  @override
  State<SetSettingsWidget> createState() => _SetSettingsWidgetState();
}

class _SetSettingsWidgetState extends State<SetSettingsWidget> {
  final controllerOne = TextEditingController();
  String input = '';

  void save() {
    controllerOne.addListener(() {
      input = controllerOne.text;
    });
    setState(() {
      input = controllerOne.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Информация';
    

    return Material(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text(
              title,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          TextField(
            controller: controllerOne,
            keyboardType: TextInputType.number,
            onEditingComplete: () => save(),
          ),
          const SizedBox(
            height: 200,
          ),
          TextButton(onPressed: save, child: const Text('save')),
          Text(
            'Пробег составил: $input',
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
