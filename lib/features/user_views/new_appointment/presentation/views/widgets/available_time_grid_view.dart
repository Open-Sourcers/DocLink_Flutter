import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/available_time_item.dart';
import 'package:flutter/material.dart';

class AvailableTimeGridView extends StatefulWidget {
  const AvailableTimeGridView({super.key});

  @override
  State<AvailableTimeGridView> createState() => _AvailableTimeGridViewState();
}

class _AvailableTimeGridViewState extends State<AvailableTimeGridView> {
  int currentIndex = 6;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 4.0,
      ),
      itemCount: 9,
      itemBuilder: (context, index) => AvailableTimeItem(
        onTap: () {
          currentIndex = index;
          print(index);
          print('******************************');
          setState(() {});
        },
        time: "09:42 AM",
        isActive: currentIndex == index,
      ),
    );
  }
}
