// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String cardTitle = '';
  String cardSubtitle = '';
  String description = '';
  String imageWay = '';

  CardWidget({
    Key? key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.description,
    required this.imageWay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.car_repair_sharp,
            ),
            title: Text(cardTitle),
            subtitle: Text(
              cardSubtitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset(imageWay),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(

                onPressed: () {
                  // Perform some action
                },
                child: const Text('Подробнее'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
