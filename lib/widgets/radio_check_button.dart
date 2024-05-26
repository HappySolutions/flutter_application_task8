import 'package:flutter/material.dart';

class RadioCheckButton extends StatefulWidget {
  const RadioCheckButton({super.key});

  @override
  State<RadioCheckButton> createState() => _RadioCheckButtonState();
}

class _RadioCheckButtonState extends State<RadioCheckButton> {
  // Map<String, bool> data = {
  //   "Breakfast (10 USD/Day)": false,
  //   "Internet WiFi (5 USD/Day)": false,
  //   "Parking (5 USD/Day)": false,
  //   "Swimming Pool (10 USD/Day)": false,
  // };
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                value: false,
                onChanged: (value) {
                  setCertainValue('Breakfast (10 USD/Day)');
                }),
            const Text('Breakfast (10 USD/Day)'),
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
                  setCertainValue('Internet WiFi (5 USD/Day)');
                }),
            const Text('Internet WiFi (5 USD/Day)'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: false,
                onChanged: (value) {
                  setCertainValue('Parking (5 USD/Day)');
                }),
            const Text('Parking (5 USD/Day)'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: false,
                onChanged: (value) {
                  setCertainValue('Swimming Pool (10 USD/Day)');
                }),
            const Text('Swimming Pool (10 USD/Day)'),
          ],
        ),
      ],
    );
  }

  void setCertainValue(String key) {
    //   for (var key in data.keys.toList()) {
    //     data[key] = false;
    //   }
    //   data[key] = true;
    //   setState(() {});
    //
  }
}
