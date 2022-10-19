// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class RoutingButtonWidget extends StatelessWidget {
  String text = '';
  String route = '';
  RoutingButtonWidget({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        
        gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 19, 10, 43),
              Color.fromARGB(255, 34, 30, 239),
            ]),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 197, 182, 182), fontSize: 17),
        ),
      ),
    );
  }
}
