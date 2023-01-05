import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemons/src/controllers/home_controller.dart';
import 'package:pokemons/src/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/images/Logo.png'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: darkBlue,
          ),
          onPressed: () {},
        ),
        actions: [Image.asset('assets/images/perfil.png')],
      ),
      body: Center(
        child: Obx(() => controller.pages[controller.selectedIndex]), //New
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: controller.onItemTapped,
          selectedItemColor: darkBlue,
          unselectedItemColor: gray,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: "Favoritos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Minha conta"),
          ],
        ),
      ),
    );
  }
}
