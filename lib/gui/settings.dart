import 'package:flutter/material.dart';
import 'package:unplastico/gui/screen0.dart';
import 'package:unplastico/gui/subscribtion.dart';
import 'package:unplastico/gui/locations.dart';
import 'package:unplastico/gui/premium.dart';

class SettingsLess extends StatelessWidget {
  const SettingsLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Settings();
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  Icon(
                    Icons.settings,
                    size: 100,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
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
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Reset Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Authenticate Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Edit Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Permissions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Help center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    print('logging out');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen0()),
                    );
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 3,
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
    ));
  }
}
