import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shwe_luck_win_bet/app/core/local_%20widget/custom_button.dart';
import 'package:shwe_luck_win_bet/app/module/controller/login_screen_controller.dart';
import '../../../../core/constants/default_values.dart';
import '../../../../core/local_ widget/custom_text_form_field.dart';
import '../../../../core/validation/validation.dart';

class BuildLoginCard extends StatelessWidget {
  BuildLoginCard({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = GlobalKey();

  final loginController = Get.find<LoginScreenController>();

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(kDefaultMargin.sh),
      margin: EdgeInsets.all(kDefaultMargin.sh),
      /*decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(4.h),
      ),*/
      child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
                controller: userNameController,
                icon: Icons.account_circle,
                hint: "ဖုန်းနံပါတ်",
                validator: checkValidPhone,
                isPhone: true,
                isPassword: false),
            SizedBox(
              height: kDefaultMargin.sh,
            ),
            CustomTextFormField(
                controller: passwordController,
                icon: Icons.visibility_off,
                hint: "လျှိဝှက်နံပါတ်",
                validator: checkIsEmpty,
                isPassword: true),
            SizedBox(
              height: 8.h,
            ),
            Obx(
              () => loginController.isLoginError.isTrue
                  ? Text(
                      loginController.errorMessage.toString(),
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  : const SizedBox(),
            ),
            SizedBox(
              height: kDefaultMargin.sh,
            ),
            CustomButton(
                onClick: () {
                  if (_key.currentState!.validate()) {
                    loginController.login(
                        phone: userNameController.text,
                        password: passwordController.text,
                        context: context);
                  }
                },
                title: "Login",
                bgColor: Theme.of(context).colorScheme.secondary,
                textColor: Theme.of(context).colorScheme.onPrimary,
                radius: 4,
                iconSize: 20,
                isIcon: false),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
