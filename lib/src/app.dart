import 'package:flutter/material.dart';
import 'package:flutter_getx_youtube/controller/app_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class App extends GetView<AppController> {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                label: "home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/compass_off.svg",
                  width: 22,
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/compass_on.svg",
                  width: 22,
                ),
                label: "search"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SvgPicture.asset(
                    "assets/svg/icons/plus.svg",
                    width: 35,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/subs_off.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/subs_on.svg",
                ),
                label: "suscribe"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/library_off.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/library_on.svg",
                ),
                label: "library")
          ],
        ),
      ),
    );
  }
}
