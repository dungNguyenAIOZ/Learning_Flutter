import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isSwitch = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/bg.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  'Hello world',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: _isSwitch ? Colors.blue : Colors.black26,
              ),
              onPressed: () {},
              child: const Text('Hello word'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Hello word'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Hello word'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Row Click');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Hello world'),
                ],
              ),
            ),
            Switch(
              value: _isSwitch,
              onChanged: (value) {
                setState(() {
                  _isSwitch = value;
                });
              },
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Image.network('https://www.w3schools.com/w3css/img_lights.jpg'),
          ],
        ),
      ),
    );
  }
}
