import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/splash_screen_controller..dart';

class SplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashScreenController(),
    );
  }
}
