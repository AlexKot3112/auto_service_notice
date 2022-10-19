import 'package:auto_service_notes/widgets/cardwidget.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatefulWidget {
  const ServiceCardWidget({Key? key}) : super(key: key);

  @override
  State<ServiceCardWidget> createState() => _ServiceCardWidgetState();
}

class _ServiceCardWidgetState extends State<ServiceCardWidget> {
  @override
  Widget build(BuildContext context) {
    const title = 'Car info';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          title,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text('My car',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
          ),
          const Text('hello'),
          CardWidget(
            cardTitle: 'Двигатель',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/engine.jpg',
          ),
          CardWidget(
            cardTitle: 'Электрооборудование',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/electrics.jpg',
          ),
          CardWidget(
            cardTitle: 'Подвеска',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/suspension.jpg',
          ),
          CardWidget(
            cardTitle: 'Салон и интерьер',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/interier.jpg',
          ),
          CardWidget(
            cardTitle: 'Расходные материалы',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/filter.jpg',
          ),
          CardWidget(
            cardTitle: 'Технические жидкости',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/oil.jpg',
          ),
          CardWidget(
            cardTitle: 'Топливо',
            cardSubtitle: 'Двигатель автомобиля',
            description: '',
            imageWay: 'assets/images/gas.jpg',
          ),
        ]),
      ),
    );
  }
}
