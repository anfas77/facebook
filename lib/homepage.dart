import 'package:facebppk2/chatpage.dart';
import 'package:facebppk2/widgets/friendrequst.dart';
import 'package:facebppk2/home.dart';
import 'package:facebppk2/marketplace.dart';
import 'package:facebppk2/menu.dart';
import 'package:facebppk2/notification.dart';
import 'package:facebppk2/videopage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List screen = [
    Home(),
    Friends(),
    VideoPage(),
    MarketPlace(),
    Notifications(),
    Menu()
  ];
  ValueNotifier barechangenotifire = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: barechangenotifire,
        builder: (context, value, _) {
          return Scaffold(
            body: screen[value],
            bottomNavigationBar: BottomNavigationBar(
              // backgroundColor: Colors.blue,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Colors.blue,
                    icon: Icon(Icons.home),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: 'friends'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.video_collection), label: 'videos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.maps_home_work_outlined),
                    label: 'marketplace'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_sharp),
                    label: 'notification'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_sharp), label: 'menu'),
              ],
              currentIndex: barechangenotifire.value,
              onTap: (value) => barechangenotifire.value = value,
            ),
          );
        });
  }
}
