import 'package:flutter/material.dart';
import 'package:flutter_application_task8/models/special_order.dart';

class OrdersPage extends StatefulWidget {
  List<SpecialOrder> specialOrdersList;
  OrdersPage({required this.specialOrdersList, super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<Widget> children = [];

  @override
  void initState() {
    for (var order in widget.specialOrdersList) {
      children.add(ordersCard(order));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          title: const Text('Orders Page'),
        ),
        body:
            // children.isEmpty
            //     ?
            SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: children,
              )),
        )
        // : const Center(
        //     child: Text('No Orders have been added'),
        //   ),
        );
  }
}

Widget ordersCard(SpecialOrder spOrder) {
  return Card(
    child: ListTile(
      title: Column(
        children: [
          Row(
            children: [
              const Text(
                'Type: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(spOrder.sliceType),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text('Addons: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(spOrder.specialAddons),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text('Phone Number: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                spOrder.phoneNum,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
      trailing: Column(
        children: [
          const Text('Slices Number',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(spOrder.sliceNum.toString()),
        ],
      ),
      leading: const CircleAvatar(
        child: Icon(
          Icons.fastfood,
          color: Colors.orange,
          size: 35,
        ),
      ),
    ),
  );
}
