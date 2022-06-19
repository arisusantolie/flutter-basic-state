import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homeButton extends StatelessWidget {
  final bool isTvOn;
  final VoidCallback turnOnOffTv;

  homeButton(this.isTvOn, this.turnOnOffTv);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(50),
      child: ElevatedButton(
        onPressed: turnOnOffTv,
        child: isTvOn
            ? Text("Turn Off", style: TextStyle(fontSize: 30))
            : Text("Turn On", style: TextStyle(fontSize: 30)),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(isTvOn ? Colors.red : Colors.green),
        ),
      ),
    );
  }
}
