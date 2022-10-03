import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestePage extends StatefulWidget {
  const TestePage({Key? key}) : super(key: key);

  @override
  State<TestePage> createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  final List<Widget> cards = [
    Container(
      width: 175,
      height: 53,
      color: Colors.red,
    ),
    Container(
      width: 175,
      height: 213,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    debugPrint(width.toString());
    debugPrint(height.toString());

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MasonryGridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return cards[index];
              },
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //     Flexible(
        //       flex: 7,
        //       fit: FlexFit.tight,
        //       child: Container(
        //         height: height * 0.45,
        //         color: Colors.blue,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.green,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.purple,
        //       ),
        //     ),
        //     Flexible(
        //       //flex: 4,
        //       fit: FlexFit.loose,
        //       child: CustomButton(
        //         width: width,
        //         height: height,
        //       ),
        //       // child: Container(
        //       //   width: width * 0.49,
        //       //   height: height * 0.07,
        //       //   color: Colors.grey,
        //       // ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
