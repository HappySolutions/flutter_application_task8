import 'package:flutter/material.dart';
import 'package:flutter_application_task8/helpers/sql_helper.dart';
import 'package:flutter_application_task8/models/special_order.dart';
import 'package:flutter_application_task8/pages/orders_page.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SpecialOrderPage extends StatefulWidget {
  const SpecialOrderPage({super.key});

  @override
  State<SpecialOrderPage> createState() => _SpecialOrderPageState();
}

class _SpecialOrderPageState extends State<SpecialOrderPage> {
  var formKey = GlobalKey<FormState>();
  var sliceTypeController = TextEditingController();
  var sliceNumController = TextEditingController();
  var specialAddsController = TextEditingController();
  var phoneNumController = TextEditingController();

  List<SpecialOrder> ordersList = [];
  // Map<String, bool> data = {
  //   'Sausages': false,
  //   'Chicken': false,
  //   'Cheese': false
  // };
  @override
  void dispose() {
    sliceTypeController.dispose;
    sliceNumController.dispose;
    specialAddsController.dispose;
    phoneNumController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Special Orders Page'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Welcome to WOW Pizza Special Order page',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'please create your own falvors and toppings',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // const Text('Chhose your type: '),
                        // Row(
                        //   children: [
                        //     Checkbox(
                        //       value: null,
                        //       onChanged: (bool? value) {},
                        //       shape: const RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(50),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        TextFormField(
                          controller: sliceTypeController,
                          decoration: const InputDecoration(
                            label: Text(
                              'Slices Type',
                            ),
                            hintText: 'eg: sasugae, checkin, margreta,...etc',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter valid slice type';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: sliceNumController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            label: Text(
                              'Slices number',
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter valid slices number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: specialAddsController,
                          decoration: const InputDecoration(
                            hintText: 'eg: extra cheese, extra mushrom,.... ',
                            label: Text(
                              'Special addons',
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter valid special addons';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: phoneNumController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            label: Text(
                              'Phone Number',
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter valid phone number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              var sqlHelper = SqlHelper();
                              sqlHelper.db!.execute("""
                               CREATE TABLE if not exists Order (id INTEGER PRIMARY KEY, 
                               sliceType TEXT, 
                               specialAddons TEXT, 
                               sliceNum INTEGER, 
                               phoneNum TEXT, 
                               )
                              """);

                              ordersList.add(SpecialOrder(
                                  sliceType: sliceTypeController.text,
                                  specialAddons: specialAddsController.text,
                                  phoneNum: phoneNumController.text,
                                  sliceNum:
                                      int.parse(sliceNumController.text)));

                              sliceNumController.clear();
                              sliceTypeController.clear();
                              specialAddsController.clear();
                              phoneNumController.clear();
                            }
                          },
                          child: const Text('Add Order'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => OrdersPage(
                                          specialOrdersList: ordersList,
                                        )));
                          },
                          child: const Text('Go To orders Page'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
