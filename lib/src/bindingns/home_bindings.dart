import 'package:get/get.dart';
import 'package:pokemons/src/controllers/home_controller.dart';
import 'package:pokemons/src/data/provider/home_provider.dart';
import 'package:pokemons/src/data/repository/home_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<HomeRepository>(() => HomeRepository());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
