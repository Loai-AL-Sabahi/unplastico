import 'package:flutter/material.dart';

class resuableIcon extends StatelessWidget {
  const resuableIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
