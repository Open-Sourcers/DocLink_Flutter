import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/canceled_schedule.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/completed_schedule.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/upcoming_schedule.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ScheduleViewState createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with the number of tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the TabController when the widget is removed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          S.of(context).schedule,
          style: Styless.textBold25,
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.commonColor,
          labelStyle: Styless.textBold14,
          tabs: const [
            Tab(icon: Icon(Icons.upcoming), text: 'Upcoming'),
            Tab(icon: Icon(Icons.dry_outlined), text: 'Completed'),
            Tab(icon: Icon(Icons.cancel_outlined), text: 'Canceled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          UpcomingSchedule(),
          CompletedSchedule(),
          CanceledSchedule(),
        ],
      ),
    );
  }
}
