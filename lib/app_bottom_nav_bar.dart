import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/chat/presentation/views/chat_view.dart';
import 'package:doc_link_project/features/home/presentation/views/home_view.dart';
import 'package:doc_link_project/features/profile/presentation/views/profile_view.dart';
import 'package:doc_link_project/features/schedule/presentation/views/schedule_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController();

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _buildItems(),
      backgroundColor: Colors.white,
      decoration: navBarDecorationMethod(),
      navBarStyle: NavBarStyle.style9,
    );
  }

  NavBarDecoration navBarDecorationMethod() {
    return const NavBarDecoration();
  }
}

List<Widget> _buildScreens() {
  return const [
    HomeView(),
    ScheduleView(),
    ChatView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _buildItems() {
  return [
    PersistentBottomNavBarItem(
      title: 'Home',
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesHomeColored,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Schedule',
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesCalendarColored,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Message',
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesMessage,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Profile',
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesProfileColored,
      ),
    ),
  ];
}
