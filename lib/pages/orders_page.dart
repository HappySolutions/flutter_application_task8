import 'package:flutter/material.dart';
import 'package:flutter_application_task8/helpers/sql_helper.dart';
import 'package:flutter_application_task8/models/special_order.dart';
import 'package:get_it/get_it.dart';

class OrdersPage extends StatefulWidget {
  List<SpecialOrder> specialOrdersList;
  OrdersPage({required this.specialOrdersList, super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<Widget> children = [];

  @override
  Future<void> initState() async {
    for (var order in widget.specialOrdersList) {
      children.add(ordersCard(order));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tableItems = GetIt.I.get<SqlHelper>().db!.query('orders');

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
                children: [
                  Card(
                    child: ListTile(
                      title: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Type: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(''),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Addons: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('spOrder.specialAddons'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Phone Number: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                'spOrder.phoneNum',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: const Column(
                        children: [
                          Text('Slices Number',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('spOrder.sliceNum'),
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
                  )
                ],
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
