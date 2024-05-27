import 'package:flutter/material.dart';
import 'package:flutter_application_task8/pages/rooms_list_page.dart';
import 'package:flutter_application_task8/utils/date_time_picker.dart';
import 'package:flutter_application_task8/widgets/radio_check_button.dart';

class AtcHotelPage extends StatefulWidget {
  const AtcHotelPage({super.key});

  @override
  State<AtcHotelPage> createState() => _AtcHotelPageState();
}

class _AtcHotelPageState extends State<AtcHotelPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();
  double sliderValue = 150;
  double sliderAdultValue = 0;
  double sliderChildrenValue = 0;
  bool switchValue = false;
  var selectedCheckboxs = [];
  List checkboxListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Breakfast (10 USD/Day)",
    },
    {
      "id": 1,
      "value": false,
      "title": "Internet WiFi (5 USD/Day)",
    },
    {
      "id": 2,
      "value": false,
      "title": "Parking (5 USD/Day)",
    },
    {
      "id": 3,
      "value": false,
      "title": "Swimming Pool (10 USD/Day)",
    },
  ];
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Android ATC Hotel',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/entrance.jpg',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Check-in Date: ',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                          '${selectedDate.year} : ${selectedDate.month} : ${selectedDate.day} , ${selectedDate.hour} : ${selectedDate.minute} '),
                      IconButton(
                          onPressed: () async {
                            var result = await showDateTimePicker(context,
                                initialDate: selectedDate,
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2025),
                                initialTime: TimeOfDay.now());
                            if (result != null) {
                              selectedDate = result;
                            }
                            setState(() {});
                          },
                          icon: const Icon(Icons.calendar_month)),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Check-Out Date: ',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                          '${selectedDate.year} : ${selectedDate.month} : ${selectedDate.day} , ${selectedDate.hour} : ${selectedDate.minute} '),
                      IconButton(
                          onPressed: () async {
                            var result = await showDateTimePicker(context,
                                initialDate: selectedDate,
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2025),
                                initialTime: TimeOfDay.now());
                            if (result != null) {
                              selectedDate = result;
                            }
                            setState(() {});
                          },
                          icon: const Icon(Icons.calendar_month)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Adults: ${sliderAdultValue.toInt()}',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                      thumbColor: Colors.blue,
                      inactiveColor: Colors.blue,
                      activeColor: Colors.orange,
                      max: 5,
                      value: sliderAdultValue,
                      onChanged: (value) {
                        sliderAdultValue = value;
                        setState(() {});
                      }),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Childrens: ${sliderChildrenValue.toInt()}',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                      thumbColor: Colors.blue,
                      inactiveColor: Colors.blue,
                      activeColor: Colors.orange,
                      max: 5,
                      value: sliderChildrenValue,
                      onChanged: (value) {
                        sliderChildrenValue = value;
                        setState(() {});
                      }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Extra: ',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const RadioCheckButton(),

              // FlutGroupedButtons<Map<String, dynamic>>(
              //     isRadio: false,
              //     titleCheckSpace: 15,
              //     activeColor: Colors.red,
              //     idKey: 'id',
              //     valueKey: 'name',
              //     data: const [
              //       {'id': 1, 'name': 'ahmed', 'phone': '121212'},
              //       {'id': 2, 'name': 'rana', 'phone': '111'},
              //       {'id': 3, 'name': 'khaled', 'phone': '222'},
              //       {'id': 4, 'name': 'mahmoud', 'phone': '333'},
              //     ],
              //     onChanged: (value) {
              //       print(value);
              //     }),

              Column(
                children: List.generate(
                  checkboxListItems.length,
                  (index) => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkboxListItems[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    value: checkboxListItems[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        checkboxListItems[index]["value"] = value;
                        if (selectedCheckboxs
                            .contains(checkboxListItems[index])) {
                          selectedCheckboxs.remove(checkboxListItems[index]);
                        } else {
                          selectedCheckboxs.add(checkboxListItems[index]);
                        }
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                'Views: ',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      value: false,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          value = true;
                        });
                      }),
                  const Text('City View'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      value: false,
                      onChanged: (value) {
                        print(value);
                      }),
                  const Text('Sea View'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      value: false,
                      onChanged: (value) {
                        print(value);
                      }),
                  const Text('Landscape View'),
                ],
              ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.orange),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const RoomsListPage(),
                    ),
                  );
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
