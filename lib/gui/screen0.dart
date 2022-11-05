import 'package:flutter/material.dart';
import 'package:unplastico/gui/login.dart';

class Screen0Less extends StatelessWidget {
  const Screen0Less({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unplastico',
      home: Screen0(),
    );
  }
}

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  State<Screen0> createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff22577A),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'images/logo.png',
              width: 400,
              height: 400,
            ),
          ),
          Text(
            'Let\' save our environment !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LogInLess()),
              );
            },
            child: Container(
              height: 50,
              child: Center(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Don\'t have an account? Sign up',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }
}
