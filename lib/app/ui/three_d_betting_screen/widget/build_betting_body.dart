import 'package:flutter/material.dart';

import 'build_three_d_grid_number_list.dart';
List<String> mNumberList = List<String>.generate(1000, (counter) => "$counter");
class BuildThreeDBettingPageBody extends StatelessWidget {
  const BuildThreeDBettingPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // alignment: Alignment.center,
      children: const[

        SizedBox(height: 12),
        BuildThreeDGridNumber(),
         SizedBox(height: 113)

      ],
    );
  }
}
