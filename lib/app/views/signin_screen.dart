import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/widgets/customTextField.dart';

import '../../data/constants/app_data.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IUBRSA",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        // backgroundColor: AppData.creamColor,
      ),
      // backgroundColor: AppData.creamColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * .1 - 60,
                          ),
                          Text(
                            "Hello Again!",
                            style: AppData.boldTextStyle.copyWith(
                              fontSize: 20,
                              height: .95,
                              color: AppData.darkBlueColor.withOpacity(
                                .85,
                              ),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome back you've\nbeen missed!",
                            style: AppData.lightTextStyle.copyWith(
                              color: AppData.darkBlueColor.withOpacity(.6),
                              height: .95,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            TEC: TextEditingController(),
                            hint: "Enter email address...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            TEC: TextEditingController(),
                            hint: "Password...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                            isPassword: true,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Recovery Password',
                                style: AppData.regularTextStyle.copyWith(
                                    color:
                                        AppData.darkBlueColor.withOpacity(.6),
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Material(
                            elevation: 15.0,
                            shadowColor: AppData.babyBlueColor,
                            borderRadius: BorderRadius.circular(
                                AppData.defaultBorderRadius),
                            child: Container(
                              height: AppData.defaultButtonHeight,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppData.royalBlueColor,
                                borderRadius: BorderRadius.circular(
                                  AppData.defaultBorderRadius,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Sign In',
                                style: AppData.boldTextStyle.copyWith(
                                  color: AppData.customWhite,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.darkBlueColor.withOpacity(.2),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                ' Or continue with ',
                                style: AppData.regularTextStyle.copyWith(
                                  color: AppData.darkBlueColor.withOpacity(.5),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.darkBlueColor.withOpacity(.2),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        AppData.darkBlueColor.withOpacity(.2),
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        AppData.darkBlueColor.withOpacity(.2),
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        AppData.darkBlueColor.withOpacity(.2),
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.facebook,
                                  color: AppData.royalBlueColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: AppData.defaultButtonHeight,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style: AppData.regularTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppData.darkBlueColor.withOpacity(.8)),
                  ),
                  Text(
                    "Register now!",
                    style: AppData.boldTextStyle.copyWith(
                      color: AppData.royalBlueColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}