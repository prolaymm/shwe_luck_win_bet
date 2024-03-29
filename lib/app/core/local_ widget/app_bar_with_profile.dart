import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/core/constants/default_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shwe_luck_win_bet/app/module/controller/profile_screen_controller.dart';

class AppBarWithProfile extends StatelessWidget with PreferredSizeWidget {
  final String profileUrl;
  final String name;
  final String phone;
  final String balance;
  final String notification;

  const AppBarWithProfile(
      {Key? key,
      required this.profileUrl,
      required this.name,
      required this.phone,
      required this.balance,
      required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileScreenController());
    profileController.getProfile();

    return Obx(
      ()=> profileController.haveLoading.isTrue? AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title:  Text("Loading",style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),),
        centerTitle: true,
      ) :  AppBar(
        elevation: 1.4,
        backgroundColor: Theme.of(context).primaryColor,
        leading: Padding(
          padding: EdgeInsets.only(left: kDefaultMargin.sh,right: 1),
          child: CachedNetworkImage(
            imageUrl: "http://167.172.73.241"+ profileController.mModel.profileImage.toString(),
            imageBuilder: (context, imageProvider) => Container(
              width: 0.08.sh,
              height: 0.08.sh,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.account_circle_outlined,size: 0.05.sh,color: Theme.of(context).colorScheme.primaryContainer,),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(profileController.mModel.name,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    fontWeight: FontWeight.bold,
                    fontSize: kLargeFontSize16.sp)),
            Text(profileController.mModel.phone,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    fontSize: kMediumFontSize14.sp)),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                size: kIconSize.sp,
                color: Theme.of(context).colorScheme.secondary,
              ),
              SizedBox(
                width: 0.0099.sw,
              ),
              Text(
                  profileController.mModel.balance.toString(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryVariant,
                  fontSize: kMediumFontSize14.sp,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          SizedBox(
            width: 0.0099.sw,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.notifications_none_outlined,
                size: kIconSize.sp,
                color: Theme.of(context).colorScheme.primaryVariant,
              ),
              Positioned(
                top: 0.01.sh,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: Text(
                    notification,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Theme.of(context).colorScheme.primaryVariant),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: kDefaultMargin.sh,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kCustomAppBarHeight.sh);
}
