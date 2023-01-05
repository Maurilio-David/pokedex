import 'package:get/get.dart';
import 'package:pokemons/src/bindingns/home_bindings.dart';
import 'package:pokemons/src/pages/home/home_screen.dart';
import 'package:pokemons/src/pages/splash/splash_screen.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBindings(),
    ),
  ];
}
