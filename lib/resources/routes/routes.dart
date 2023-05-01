import 'package:get/get.dart';
import 'package:getx_project/resources/routes/routes_name.dart';
import 'package:getx_project/view/login/login_view.dart';
import 'package:getx_project/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen,
      page: ()=> SplashScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),

    GetPage(
      name: RouteName.loginView,
      page: ()=> LoginView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
