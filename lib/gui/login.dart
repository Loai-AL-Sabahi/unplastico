import 'package:flutter/material.dart';
import 'package:unplastico/gui/subscribtion.dart';
import 'package:unplastico/reusables/back_icon.dart';

class LogInLess extends StatelessWidget {
  const LogInLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
    passwordController.addListener(() => setState(() {}));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                resuableIcon(),
              ],
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset(
                  'images/blacklogo.png',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                flex: 4,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'example@email.com',
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                flex: 4,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    errorText: 'Forgot Password?',
                  ),
                  obscureText: true,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print('Email: ${emailController.text}');
                  print('Password: ${passwordController.text}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubscirptionLess()),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xff22577A),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
