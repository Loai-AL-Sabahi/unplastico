import 'package:flutter/material.dart';
import 'package:unplastico/gui/locations.dart';
import 'package:unplastico/gui/subscribtion.dart';
import 'package:unplastico/gui/settings.dart';

class PremiumLess extends StatelessWidget {
  const PremiumLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Premium();
  }
}

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  final userSearch = TextEditingController();
  final userDate = TextEditingController();
  final userTime = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'images/logo.png',
                        height: 150,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Too busy to add bags\nto containers?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'We can collect your reusable\nbags at your doorstep!',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff22577A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: userSearch,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search for your location',
                    hintText: 'Example UTM Residency',
                    prefixIcon: Icon(Icons.location_on_outlined),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: Image.asset(
                  'images/searchlocation.png',
                  height: 200,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: userDate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Choose Date',
                    hintText: 'dd/mm/yyyy',
                    prefixIcon: Icon(Icons.date_range),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: userDate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Choose time',
                    hintText: '00:00 pm/am',
                    prefixIcon: Icon(Icons.timelapse_outlined),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff80ED99)),
                  child: Center(
                    child: Text(
                      'Request',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    ),
                  ),
                )),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Home pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SubscirptionLess()),
                          );
                        },
                        icon: Icon(
                          Icons.home,
                          size: 35,
                        ),
                      ),
                      Text('Home'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('locations pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LocationsLess()),
                          );
                        },
                        icon: Icon(
                          Icons.location_on,
                          size: 35,
                        ),
                      ),
                      Text('Locations'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Premium pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PremiumLess()),
                          );
                        },
                        icon: Icon(
                          Icons.workspace_premium,
                          size: 35,
                        ),
                      ),
                      Text('Premium'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('settings pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsLess()),
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 35,
                        ),
                      ),
                      Text('Settings'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
