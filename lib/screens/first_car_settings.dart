import 'package:flutter/material.dart';

class SetSettingsWidget extends StatefulWidget {
  const SetSettingsWidget({super.key});

  @override
  State<SetSettingsWidget> createState() => _SetSettingsWidgetState();
}

class _SetSettingsWidgetState extends State<SetSettingsWidget> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Информация';
  String kilometers = controller.text.toString();
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
            controller: controller,
            
            
          ),
          const SizedBox(
            height: 200,
          ),
          Text(
            'Пробег составил: $kilometers',
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
