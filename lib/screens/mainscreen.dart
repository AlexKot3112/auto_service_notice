import 'package:auto_service_notes/widgets/routingbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Auto Service Notice'),
            ),
            ListTile(
              leading: const Icon(Icons.car_repair),
              iconColor: Colors.black,
              title: const Text('Ремонт'),
              trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.access_alarms),
              iconColor: Colors.black,
              title: const Text('Плановое ТО'),
              trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/card');
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              iconColor: Colors.black,
              title: const Text('Расходы'),
              trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.star),
              iconColor: Colors.black,
              title: const Text('Общая статистика'),
              trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              iconColor: Colors.black,
              title: const Text('Настройки'),
              trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              iconColor: Colors.black,
              title: const Text('Выход'),
              onTap: () => SystemNavigator.pop(),
            ),
          ],
        ),
      ),
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
