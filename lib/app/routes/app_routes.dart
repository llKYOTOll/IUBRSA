import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/binding/homeframe_bindings.dart';
import 'package:iubrsa/app/views/notification/binding/notification_screen_binding.dart';
import 'package:iubrsa/app/views/onboarding/binding/onboarding_screen_binding.dart';
import 'package:iubrsa/app/views/profile/binding/profile_screen_binding.dart';
import 'package:iubrsa/app/views/register_a_trip/binding/register_a_trip_screen_binding.dart';
import 'package:iubrsa/app/views/signin/binding/signin_screen_binding.dart';
import 'package:iubrsa/app/views/trip_details/binding/trip_details_screen_bindings.dart';
import 'package:iubrsa/app/views/home/views/homefram.dart';
import 'package:iubrsa/app/views/notification/views/notification_screen.dart';
import 'package:iubrsa/app/views/onboarding/views/onboarding_screen.dart';
import 'package:iubrsa/app/views/profile/views/profile_screen.dart';
import 'package:iubrsa/app/views/register_a_trip/views/register_a_trip_screen.dart';
import 'package:iubrsa/app/views/signin/views/signin_screen.dart';
import 'package:iubrsa/app/views/trip_details/views/trip_details_screen.dart';

import '../../data/constants/app_data.dart';
import '../views/signup/binding/signup_screen_binding.dart';
import '../views/splashscreen/binding/splash_screen_binding.dart';
import '../views/signup/views/signup_screen.dart';
import '../views/splashscreen/views/splash_screen.dart';

class ROUTES {
  static get getSplashScreenRoute => "/splash_screen";
  static get getOnboardingScreenRoute => "/onboarding_screen";
  static get getSigninScreenRoute => "/signin_screen";
  static get getSignupScreenRoute => "/signup_screen";
  static get getHomeframeRoute => "/homeframe";
  static get getProfileScreenRoute => "/profile_screen";
  static get getRegisterATripScreenRoute => "/register_a_trip_screen";
  static get getTripDetailsScreenRoute => "/trip_details_screen";
  static get getNotificationScreenScreenRoute => "/notification_screen";

  static List<GetPage> routes = [
    GetPage(
      name: getSplashScreenRoute,
      page: () => SplashScreen(),
      binding: SplashScreenBindings(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getOnboardingScreenRoute,
      page: () => OnboardingScreen(),
      binding: OnboardingScreenBindings(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getSigninScreenRoute,
      page: () => SigninScreen(),
      binding: SigninScreenBinding(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getSignupScreenRoute,
      page: () => SignupScreen(),
      binding: SignupScreenBinding(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getHomeframeRoute,
      page: () => Homeframe(),
      binding: HomeframeBindings(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getProfileScreenRoute,
      page: () => ProfileScreen(),
      binding: ProfileScreenBinding(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getRegisterATripScreenRoute,
      page: () => RegisterATripScreen(),
      binding: RegisterATripScreenBinding(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getTripDetailsScreenRoute,
      page: () => TripDetailsScreen(),
      binding: TripDetailsScreenBindings(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    ),
    GetPage(
      name: getNotificationScreenScreenRoute,
      page: () => NotificationScreen(),
      binding: NotificationScreenBinding(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    )
  ];
}
