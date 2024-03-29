import 'package:flutter/material.dart';
import 'package:shwe_luck_win_bet/app/core/constants/default_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shwe_luck_win_bet/app/ui/today_result/all_widget/user_bet_result.dart';

class TabBarForUserResult extends StatelessWidget {
  const TabBarForUserResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Container(
          padding: EdgeInsets.only(top: 0.01.sh,right: 0.009.sh,left: 0.009.sh),
          width: 1.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0.056.sh),
                  topLeft: Radius.circular(0.056.sh)),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: Column(children: [
            TabBar(
              labelColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(
                  fontSize: kMediumFontSize14.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'helvetica'),
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                  fontSize: kMediumFontSize14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'helvetica'),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
             indicatorColor:Theme.of(context).primaryColor ,
             /* indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.sh), // Creates border
                  color: Theme.of(context).primaryColor),*/
              tabs: [

                const Tab(text: "ထိုးသားမှတ်တမ်း"),
                const Tab(text: "ထီပေါက်စဉ်မှတ်တမ်း"),
              ],
            ),

            const Flexible(child: TabBarView(
              children: [
                UserBetResult(),
                Text("Comming soon")
              ],
            ))
          ]),
        ));
  }
}
