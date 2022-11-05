import 'package:flutter/material.dart';
import 'package:unplastico/gui/settings.dart';
import 'package:unplastico/gui/subscribtion.dart';
import 'package:unplastico/gui/premium.dart';

class LocationsLess extends StatelessWidget {
  const LocationsLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Locations();
  }
}

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
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
                          'Find the nearest\ncontainer to you',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Our containers are placed\nall around the city!',
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('images/locations.png'),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff80ED99)),
                child: Center(
                  child: Text(
                    'Show directions to the nearest one',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
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
