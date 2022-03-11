import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/core/local_%20widget/quick_bet_button_row.dart';

import '../../../core/constants/default_values.dart';
import '../../../core/local_ widget/button_quick_bet.dart';
import '../../../core/local_ widget/custom_button.dart';

void quickBettingBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.05.sh),
          topRight: Radius.circular(0.05.sh)),
    ),
    context: context,
    builder: (context) {
      return SizedBox(
          width: double.infinity,
          height: 0.7.sh,
          child: Padding(
            padding: EdgeInsets.only(left: kDefaultMargin.sh,right: kDefaultMargin.sh,top: kDefaultMargin.sh,),
            child: ListView(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: () => Get.back(),
                      child: Icon(Icons.clear,size: 24.sp)),
                ),
                Text("အမြန်ရွေ", style: TextStyle(color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                    fontSize: kSmallFontSize12.sp,
                    fontWeight: FontWeight.bold),),
                QuickBetButtonRow(
                    mDataList: mType, onPress: () => print("hahahah")),
                SizedBox(
                  height: 4.h,
                ),
                QuickBetButtonRow(
                    mDataList: mNumber, onPress: () => print("hahahah")),
                SizedBox(
                  height: kDefaultMargin.sh,
                ),
                Text("ထိပ်စည်း", style: TextStyle(color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                    fontSize: kSmallFontSize12.sp,
                    fontWeight: FontWeight.bold),),
                QuickBetButtonRow(
                    mDataList: mNumber, onPress: () => print("hahahah")),
                SizedBox(
                  height: kDefaultMargin.sh,
                ),
                Text("နောက်ပိတ်", style: TextStyle(color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                    fontSize: kSmallFontSize12.sp,
                    fontWeight: FontWeight.bold),),
                QuickBetButtonRow(
                    mDataList: mNumber, onPress: () => print("hahahah")),
                SizedBox(
                  height: kDefaultMargin.sh,
                ),
                Text("နတ်ကွက်", style: TextStyle(color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                    fontSize: kSmallFontSize12.sp,
                    fontWeight: FontWeight.bold),),
                QuickBetButtonRow(
                    mDataList: mAngel1, onPress: () => print("hahahah")),
                SizedBox(
                  height: 4.h,
                ),
                QuickBetButtonRow(
                    mDataList: mAngel2, onPress: () => print("hahahah")),
                SizedBox(
                  height: kDefaultMargin.sh,
                ),
                Text("20 လုံးစီ", style: TextStyle(color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                    fontSize: kSmallFontSize12.sp,
                    fontWeight: FontWeight.bold),),
                Wrap(
                  children: mPair.map((e) =>
                      Padding(
                        padding: EdgeInsets.only(left: 2.h, right: 2.h),
                        child: ButtonQuickBet(
                            title: e.toString(),
                            radius: 0.009,
                            bgColor: Theme
                                .of(context)
                                .hintColor,
                            textColor: Theme
                                .of(context)
                                .colorScheme
                                .primaryContainer,
                            fontSize: kMediumFontSize14,
                            onPress: () => print("Hello World"),
                            height: 0.05,
                            width: 0.075),
                      )).toList(),
                ),
                SizedBox(
                  height: kDefaultMargin.sh,
                ),
              ],
            ),
          ));
    },
  );
}


List <dynamic> mNumber = ['0', "1", '2', '3', '4', '5', '6', '7', '8', '9'];
List <dynamic> mType = ['ကြီး', "ငယ်", 'မ', 'စုံ', 'စုံစုံ', 'စုံမ', 'မစုံ', 'မမ', 'အပူး'];
List<dynamic> mAngel1 = ["07", "18", "24", "35", "69"];
List<dynamic> mAngel2 = ["07", "18", "24", "35", "69"];
List<dynamic> mPair = ["00-19", "20-39", "40-59", "60-79", "80-99"];