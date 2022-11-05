import 'package:flutter/material.dart';
import 'package:unplastico/gui/premium.dart';
import 'package:unplastico/gui/locations.dart';
import 'package:unplastico/gui/settings.dart';

class SubscirptionLess extends StatefulWidget {
  const SubscirptionLess({Key? key}) : super(key: key);

  @override
  State<SubscirptionLess> createState() => _SubscirptionLessState();
}

class _SubscirptionLessState extends State<SubscirptionLess> {
  @override
  Widget build(BuildContext context) {
    return Subscirption();
  }
}

class Subscirption extends StatefulWidget {
  const Subscirption({Key? key}) : super(key: key);

  @override
  State<Subscirption> createState() => _SubscirptionState();
}

class _SubscirptionState extends State<Subscirption> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.supervised_user_circle_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome User',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'example@email.com',
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
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Image.asset(
                  'images/availablebags.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff38A3A5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Show QR code to retrieve your bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.qr_code_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff38A3A5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Scan QR code to add a bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Home pressed');
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
