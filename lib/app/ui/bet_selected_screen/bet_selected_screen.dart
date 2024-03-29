import 'package:flutter/material.dart';
import 'package:shwe_luck_win_bet/app/core/data/repo/lottery/two_d_repo.dart';
import 'package:shwe_luck_win_bet/app/module/controller/lotery/three_d_betting_controller.dart';
import 'package:shwe_luck_win_bet/app/module/controller/lotery/two_d_betting_controller.dart';
import 'package:shwe_luck_win_bet/app/ui/bet_selected_screen/widget/build_bet_selected_screen_body.dart';
import '../../core/local_ widget/app_bar_with_profile.dart';

class BetSelectedScreen extends StatelessWidget {


  const BetSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TwoDRepo().getThreeD();
    return const Scaffold(
     appBar :  AppBarWithProfile(
        profileUrl:
        "https://cdn.pixabay.com/photo/2015/11/30/14/10/batman-1070422_960_720.jpg",
        name: 'Aj MM',
        phone: '096',
        balance: '40000',
        notification: '10',
      ),
      body:BuildBetSelectedScreenBody(),


    );
  }
}
