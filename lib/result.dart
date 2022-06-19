import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class result extends StatelessWidget {
  final bool isTvOn;

  result(this.isTvOn);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: TextButton.icon(
    //     onPressed: null,
    //     icon: isTvOn

    //         : Icon(
    //             Icons.tv_off,
    //             size: 150,
    //             color: Colors.red,
    //           ),
    //     style: TextButton.styleFrom(
    //       textStyle: TextStyle(
    //         fontSize: 20,
    //       ),
    //     ),
    //     label: isTvOn
    //         ? Text(
    //             "On",
    //             textAlign: TextAlign.left,
    //           )
    //         : Text(
    //             "Off",
    //             textAlign: TextAlign.left,
    //           ),
    //   ),
    // );

    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Column(
        children: [
          isTvOn
              ? Icon(
                  Icons.tv_outlined,
                  size: 150,
                  color: Colors.green,
                )
              : Icon(
                  Icons.tv_off,
                  size: 150,
                  color: Colors.red,
                ),
          Text(isTvOn ? "Happy Watching!" : "Tv Off")
        ],
      ),
    );
  }
}
