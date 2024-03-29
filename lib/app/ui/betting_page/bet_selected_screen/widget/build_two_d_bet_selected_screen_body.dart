import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/module/controller/lotery/two_d_betting_controller.dart';
import 'package:shwe_luck_win_bet/app/ui/betting_page/bet_selected_screen/widget/two_d_selected_bet_list.dart';

import '../../../../core/constants/default_values.dart';

class BuildTwoDBetSelectedBody extends StatelessWidget {
  const BuildTwoDBetSelectedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TwoDBettingController>();
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/images/bg.png',
                  ),
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor.withOpacity(0.27),
                      BlendMode.modulate))),
        ),
        Positioned(
            top: 0,
            bottom: 48.h,
            right: 0,
            left: 0,
            child: TwoDSelectedBetList(controller: controller)),
        Positioned(
          bottom: 16.h,
          right: 16.w,
          left: 16.w,
          child: MaterialButton(
            minWidth: double.infinity,
            height: 0.068.sh,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.h)),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              controller.bettingTwoD(context);
              controller.checkBySelectedItem();
            },
            child: Text(
              "ထိုးမည်",
              style: TextStyle(
                  //     color: Theme.of(context).colorScheme.primaryContainer,
                  fontSize: kLargeFontSize16.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
