import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/default_values.dart';
import '../../../core/local_ widget/quick_bet_button_row.dart';
import '../../../module/controller/lotery/two_d_betting_controller.dart';

class QuickBettingList extends StatelessWidget {
  const QuickBettingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TwoDBettingController>();

    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
              onTap: () => Get.back(), child: Icon(Icons.clear, size: 24.sp)),
        ),
        Text(
          "အမြန်ရွေ",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: kSmallFontSize12.sp,
              fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: [
            QuickBetButtonRow(
              title: 'ကြီး',
              onPress: () =>
                  controller.selectByLength(startLength: 50, endLength: 99),
            ),
            QuickBetButtonRow(
                title: 'ငယ်',
                onPress: () =>
                    controller.selectByLength(startLength: 0, endLength: 49)),
            QuickBetButtonRow(
                title: 'စုံ', onPress: () => controller.evenNumber()),
            QuickBetButtonRow(
                title: 'မ', onPress: () => controller.oddNumber()),

            QuickBetButtonRow(
                title: 'စုံစုံ', onPress: () => controller.bothEven()),
            QuickBetButtonRow(
                title: 'စုံမ', onPress: () => controller.firstEvenSecondOdd()),
            QuickBetButtonRow(
                title: 'မစုံ', onPress: () => controller.firstOddSecondEven()),
            QuickBetButtonRow(title: 'မမ', onPress: () => controller.bothOdd()),
            QuickBetButtonRow(
                title: 'အပူး', onPress: () => controller.bothSameValue()),
            //
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        /*      QuickBetButtonRow(
            mDataList: mNumber, onPress: () => print("hahahah")),*/
        SizedBox(
          height: kDefaultMargin.sh,
        ),
        Text(
          "ထိပ်စည်း",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: kSmallFontSize12.sp,
              fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: [
            QuickBetButtonRow(
                title: '0',
                onPress: () =>
                    controller.getByNumber(digit: '0', isFirstStart: true)),
            QuickBetButtonRow(
                title: '1',
                onPress: () =>
                    controller.getByNumber(digit: '1', isFirstStart: true)),
            QuickBetButtonRow(
                title: '2',
                onPress: () =>
                    controller.getByNumber(digit: '2', isFirstStart: true)),
            QuickBetButtonRow(
                title: '3',
                onPress: () =>
                    controller.getByNumber(digit: '3', isFirstStart: true)),
            QuickBetButtonRow(
                title: '4',
                onPress: () =>
                    controller.getByNumber(digit: '4', isFirstStart: true)),
            QuickBetButtonRow(
                title: '5',
                onPress: () =>
                    controller.getByNumber(digit: '5', isFirstStart: true)),
            QuickBetButtonRow(
                title: '6',
                onPress: () =>
                    controller.getByNumber(digit: '6', isFirstStart: true)),
            QuickBetButtonRow(
                title: '7',
                onPress: () =>
                    controller.getByNumber(digit: '7', isFirstStart: true)),
            QuickBetButtonRow(
                title: '8',
                onPress: () =>
                    controller.getByNumber(digit: '8', isFirstStart: true)),
            QuickBetButtonRow(
                title: '9',
                onPress: () =>
                    controller.getByNumber(digit: '9', isFirstStart: true)),
            //  ,  , , ,
          ],
        ),
        /*    QuickBetButtonRow(
            mDataList: mNumber, onPress: () => print("hahahah")),*/
        SizedBox(
          height: kDefaultMargin.sh,
        ),
        Text(
          "နောက်ပိတ်",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: kSmallFontSize12.sp,
              fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: [
            QuickBetButtonRow(
                title: '0', onPress: () => controller.getByNumber(digit: '0')),
            QuickBetButtonRow(
                title: '1', onPress: () => controller.getByNumber(digit: '1')),
            QuickBetButtonRow(
                title: '2', onPress: () => controller.getByNumber(digit: '2')),
            QuickBetButtonRow(
                title: '3', onPress: () => controller.getByNumber(digit: '3')),
            QuickBetButtonRow(
                title: '4', onPress: () => controller.getByNumber(digit: '4')),
            QuickBetButtonRow(
                title: '5', onPress: () => controller.getByNumber(digit: '5')),
            QuickBetButtonRow(
                title: '6',
                onPress: () =>
                    controller.getByNumber(digit: '6', isFirstStart: true)),
            QuickBetButtonRow(
                title: '7', onPress: () => controller.getByNumber(digit: '7')),
            QuickBetButtonRow(
                title: '8', onPress: () => controller.getByNumber(digit: '8')),
            QuickBetButtonRow(
                title: '9', onPress: () => controller.getByNumber(digit: '9')),
            //  ,  , , ,
          ],
        ),
        SizedBox(
          height: kDefaultMargin.sh,
        ),
        Text(
          "နတ်ကွက်",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: kSmallFontSize12.sp,
              fontWeight: FontWeight.bold),
        ),
        /*       QuickBetButtonRow(
            mDataList: mAngel1, onPress: () => print("hahahah")),*/
        SizedBox(
          height: 4.h,
        ),
/*        QuickBetButtonRow(
            mDataList: mAngel2, onPress: () => print("hahahah")),*/
        SizedBox(
          height: kDefaultMargin.sh,
        ),
        Text(
          "20 လုံးစီ",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: kSmallFontSize12.sp,
              fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: [
            QuickBetButtonRow(
              title: '0-19',
              onPress: () =>
                  controller.selectByLength(startLength: 0, endLength: 19),
              width: 0.08,
            ),
            QuickBetButtonRow(
              title: '20-39',
              onPress: () =>
                  controller.selectByLength(startLength: 20, endLength: 39),
              width: 0.08,
            ),
            QuickBetButtonRow(
              title: '40-59',
              onPress: () =>
                  controller.selectByLength(startLength: 40, endLength: 59),
              width: 0.08,
            ),
            QuickBetButtonRow(
              title: '60-79',
              onPress: () =>
                  controller.selectByLength(startLength: 60, endLength: 79),
              width: 0.08,
            ),
            QuickBetButtonRow(
              title: '80-99',
              onPress: () =>
                  controller.selectByLength(startLength: 80, endLength: 99),
              width: 0.08,
            ),

            //  ,  , , ,
          ],
        ),
        SizedBox(
          height: kDefaultMargin.sh,
        ),
      ],
    );
  }
}

List<dynamic> mNumber = ['0', "1", '2', '3', '4', '5', '6', '7', '8', '9'];

List<dynamic> mAngel1 = ["07", "18", "24", "35", "69"];
List<dynamic> mAngel2 = ["07", "18", "24", "35", "69"];
List<dynamic> mPair = ["00-19", "20-39", "40-59", "60-79", "80-99"];
