import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/chat/presentation/views/chat_view.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo_imple.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_cubit.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/home_view.dart';
import 'package:doc_link_project/features/user_views/profile/presentation/views/profile_view.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/schedule_view.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController();

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SpecialitiesCubit>(
          create: (context) => SpecialitiesCubit(
            homeRepo: getit.get<HomeRepoImple>(),
          )..getAllSpecialities(context),
        ),
      ],
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _buildItems(context),
        backgroundColor: Colors.white,
        decoration: navBarDecorationMethod(),
        navBarStyle: NavBarStyle.style9,
      ),
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

List<PersistentBottomNavBarItem> _buildItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      title: S.of(context).home,
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesHomeColored,
      ),
    ),
    PersistentBottomNavBarItem(
      title: S.of(context).schedule,
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesCalendarColored,
      ),
    ),
    PersistentBottomNavBarItem(
      title: S.of(context).message,
      textStyle: Styless.textBold14,
      icon: const Icon(
        Icons.message_outlined,
        color: Color(0xff63B4FF),
      ),
    ),
    PersistentBottomNavBarItem(
      title: S.of(context).prof,
      textStyle: Styless.textBold14,
      icon: Image.asset(
        AppImages.imagesProfileColored,
      ),
    ),
  ];
}
