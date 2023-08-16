import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/jobs_ctrl.dart';

class IntroView extends StatelessWidget {
  IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Andriod : ${GetPlatform.isAndroid}');
    print('Mobile: ${GetPlatform.isMobile}');
    print('Width/Height ${Get.width}, ${Get.height}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '순기의 Widget Test',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        leading: const Icon(Icons.dashboard_customize_rounded),
        actions: [
          IconButton(
            onPressed: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body:
          // SingleChildScrollView(
          //     child:
          Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: Jobs.job.length,
          itemBuilder: (BuildContext context, int index) {
            return myJobButton(
                title: Jobs.job[index]['title'], wgt: Jobs.job[index]['wgt']);
          },
        ),
      ),
    );
  }
}

myJobButton({required String title, required Widget wgt}) {
  return Center(
    child: Wrap(
      children: [
        Container(
          height: 80.0,
          width: 400.0,
          // padding: EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.amber, Colors.purple]),
              // begin: FractionalOffset(0.0, 0.0),
              // end: FractionalOffset(1.0, 0.0),
              // stops: [0.0, 1.0],
              // tileMode: TileMode.clamp
            ),
            child: ElevatedButton(
              onPressed: () {
                Get.to(wgt);
              },
              onHover: (val) {
                print('this is hover');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: Text(
                title,
                //   style: Theme.of(context).textTheme.bodyText1,
                style: const TextStyle(
                    fontSize: 18, backgroundColor: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Padding myJobButton2({required String title, required Widget wgt}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: SizedBox(
      // width: 0.0,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {
          Get.to(wgt);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          // maximumSize: const Size(50.0, 40.0)
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, backgroundColor: Colors.transparent),
        ),
      ),
    ),
  );
}

Padding myJobButton3({required String title, required Widget wgt}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {
        Get.to(wgt);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shadowColor: Colors.greenAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          maximumSize: const Size(80.0, 80.0)),
      child: Text(
        title,
        style:
            const TextStyle(fontSize: 18, backgroundColor: Colors.transparent),
      ),
    ),
  );
}

MaterialButton myJobButton4({required String title, required Widget wgt}) {
  return MaterialButton(
    height: 50.0,
    minWidth: 80,
    onPressed: () {
      Get.to(wgt);
    },
    child: Text(title),
    splashColor: Colors.redAccent,
  );
}

myJobButton5({required String title, required Widget wgt}) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 60, height: 50),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        width: 100.0,
        child: ElevatedButton(
          onPressed: () {
            Get.to(wgt);
          },
          child: Text(
            title,
          ),
        ),
      ),
    ),
  );
}

myJobButton6({required String title, required Widget wgt}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 70,
      width: 50.0,
      child: ElevatedButton(
        onPressed: () {
          Get.to(wgt);
        },
        child: Text(
          title,
        ),
      ),
    ),
  );
}

mySizedBox() {
  return const SizedBox(
    height: 40,
  );
}
