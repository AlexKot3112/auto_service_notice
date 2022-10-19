import 'package:auto_service_notes/widgets/routingbutton.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    const title = 'Auto Service Notice';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          title,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 11, 55, 202),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ]),
              ),
              width: 300.0,
              height: 300.0,
              child: const Center(child: Text('AVATAR')),
            ),
            RoutingButtonWidget(
              text: 'Details',
              route: '/card',
            ),
            RoutingButtonWidget(
              text: 'Gallery',
              route: '/gallery',
            ),
            RoutingButtonWidget(
              text: 'Car Info',
              route: '/firstsettings',
            ),
          ],
        ),
      ),
    );
  }
}
