import 'package:flutter/material.dart';

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            SizedBox(
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              width: 100,
              child: Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );

    // Row(
    //   children: [
    //     SizedBox(
    //       width: 100,
    //       child: Column(
    //         children: [
    //           Expanded(
    //             child: Container(
    //               color: Colors.green,
    //             ),
    //           ),
    //           Container(
    //             color: Colors.red,
    //             height: 100,
    //           ),
    //           Expanded(
    //             child: Container(
    //               color: Colors.green,
    //             ),
    //           ),
    //           Container(
    //             color: Colors.red,
    //             height: 100,
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(
    //       width: 100,
    //       child: Column(
    //         children: [
    //           Container(
    //             color: Colors.blue,
    //             height: 100,
    //           ),
    //           Expanded(
    //             child: Container(
    //               color: Colors.yellow,
    //             ),
    //           ),
    //           Container(
    //             color: Colors.blue,
    //             height: 100,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    // ),
    // );
  }
}
