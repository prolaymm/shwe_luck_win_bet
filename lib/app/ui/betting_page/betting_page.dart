import 'package:flutter/material.dart';
import 'package:shwe_luck_win_bet/app/ui/betting_page/all_widget/build_betting_page_body.dart';
import 'package:shwe_luck_win_bet/app/ui/betting_page/all_widget/catagory_button.dart';

import '../../core/local_ widget/app_bar_with_preferred_widget.dart';
class BettingPage extends StatelessWidget {
  const BettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
      appBar: const AppBarWithPreferredWidget(
        profileUrl:
            "https://cdn.pixabay.com/photo/2015/11/30/14/10/batman-1070422_960_720.jpg",
        name: 'Aj MM',
        phone: '096',
        balance: '40000',
        notification: '10',
        mPreferredWidget: CatagoryButton(),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage(
                      'assets/images/bg.png',
                    ),
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor.withOpacity(0.27),
                        BlendMode.modulate))),
          ),
           const BuildBettingPageBody(),
        ],
      ),
      /*floatingActionButton: SizedBox(
        width: 0.3.sw,
        child: CustomButton(
          isIcon: false,
          title: 'နောက်ထပ်',
          radius: 0.1.sw,
          bgColor: Theme.of(context).colorScheme.secondary,
          onClick: () {
            Get.toNamed(Pages.lBetSelected);
          },
          iconSize: 0,
          textColor: Theme.of(context).colorScheme.onPrimary,
        ),
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
