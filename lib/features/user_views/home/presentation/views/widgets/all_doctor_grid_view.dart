import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_fade_animation.dart';
import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/managers/doctor_cubit/doctor_cubit.dart';
import 'package:doc_link_project/features/user_views/doctor_details/presentation/managers/doctor_cubit/doctor_states.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo_imple.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/custom_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorsGridView extends StatelessWidget {
  const AllDoctorsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(
        homeRepo: getit.get<HomeRepoImple>(),
      )..getAllDocs(),
      child: BlocConsumer<DoctorCubit, DoctorStates>(
        listener: (context, state) {},
        builder: (context, state) {
          // Loading State
          if (state is GetAllDoctorsLoading) {
            return const Center(child: CustomLoadingIcon());
          }
          // Failure State
          else if (state is GetAllDoctorsFailure) {
            return Center(
              child: Text(state.errMessage!, style: Styless.textBold25),
            );
          }
          // Success State
          else if (state is GetAllDoctorsSuccess) {
            return Padding(
              padding: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: state.doctors!.length,
                itemBuilder: (context, indx) {
                  return CustomFadeInUp(
                    duration: animationDuration,
                    child: CustomDoctorCard(
                      doctor: state.doctors![indx],
                    ),
                  );
                },
              ),
            );
          }
          // Loading State
          else {
            return const Center(
              child: Text("State is in initial ...", style: Styless.textBold25),
            );
          }
        },
      ),
    );
  }
}
