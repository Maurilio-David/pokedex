import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemons/src/pages/home/home_tab.dart';

class HomeController extends GetxController {
  //global  scaffold key
  final _scaffoldKey = GlobalKey<ScaffoldState>().obs;
  get scaffoldKey => _scaffoldKey.value;
  set scaffoldKey(val) => _scaffoldKey.value = val;

  //Open Sidebar
  final RxBool _isOpenSidebar = false.obs;
  get isOpenSidebar => _isOpenSidebar.value;
  set isOpenSidebar(val) => _isOpenSidebar.value = val;

  //Selected index tabs
  final RxInt _selectedIndex = 0.obs;
  get selectedIndex => _selectedIndex.value;
  set selectedIndex(val) => _selectedIndex.value = val;

  void onItemTapped(index) {
    selectedIndex = index;
  }

  //Close Sidebar
  void closeSideMenu() {
    _scaffoldKey.value.currentState?.closeDrawer();
  }

  //pages in tabs
  final RxList<Widget> _pages = <Widget>[
    const HomeTab(),
    Container(
      color: Colors.red,
      child: const Text("Page 2"),
    ),
    Container(
      color: Colors.blue,
      child: const Text("Page 3"),
    ),
  ].obs;
  List<Widget> get pages => _pages;
  set pages(List<Widget> val) {
    _pages.value = val;
  }
}
