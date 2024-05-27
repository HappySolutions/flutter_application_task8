import 'package:flutter/material.dart';

class RoomsListPage extends StatefulWidget {
  const RoomsListPage({super.key});

  @override
  State<RoomsListPage> createState() => _RoomsListPageState();
}

class _RoomsListPageState extends State<RoomsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/entrance.jpg',
                        height: 80,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'King Room',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_up),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('A Room with a King-Sized Bed'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/entrance.jpg',
                        height: 80,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Double Room',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_up),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('A Room assigned to tow people'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              tileColor: const Color.fromARGB(255, 243, 243, 243),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/entrance.jpg',
                        height: 80,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Family Room',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_up),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('A Room assigned to Three or four people'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
