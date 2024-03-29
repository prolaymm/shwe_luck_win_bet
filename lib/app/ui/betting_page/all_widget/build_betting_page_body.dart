import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/module/controller/lotery/two_d_betting_controller.dart';
import 'package:shwe_luck_win_bet/app/ui/betting_page/all_widget/tow_d_number_list.dart';



class BuildBettingPageBody extends StatelessWidget {
  const BuildBettingPageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TwoDBettingController>();
    return ListView(
      // alignment: Alignment.center,
      children: [

        const SizedBox(height: 12),
          TowDNumberList(mNumberList: controller.mTwoDList),
        const SizedBox(height: 113)

      ],
    );
  }
}
