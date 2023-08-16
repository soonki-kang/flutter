import 'package:flutter/material.dart';

class ElevateBtn extends StatelessWidget {
  const ElevateBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ElevateButton Grident and Sized'
        ),
      ),
      body: Center(
        child: Container(
          height: 80.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              // begin: FractionalOffset(0.0, -1.0),
              // end: FractionalOffset(1.0, 1.0),
              stops: [0.4, 0.7],
              tileMode: TileMode.repeated
            )
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent
            ),
            onPressed: () {},
            child: const Text(
              '어떻게 될까?'
            ),
          ),
        ),
      ),
    );
  }
}
