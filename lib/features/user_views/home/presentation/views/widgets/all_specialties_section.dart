import 'package:doc_link_project/core/common/widgets/custom_loading_icon.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/home/data/repo/home_repo_imple.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_cubit.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_states.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/all_specialties_list_view.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllSpecialtiesSection extends StatelessWidget {
  const AllSpecialtiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpecialitiesCubit(
        homeRepo: getit.get<HomeRepoImple>(),
      )..getAllSpecialities(context),
      child: BlocConsumer<SpecialitiesCubit, SpecialitiesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetAllSpecLoading) {
            return const CustomLoadingIcon();
          } else if (state is GetAllSpecFailure) {
            return Center(
              child: Text(
                state.errMessage!,
                style: Styless.textBold25,
              ),
            );
          } else if (state is GetAllSpecSuccess) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  width: double.infinity,
                  child: Text(
                    '${S.of(context).specialties} 👀',
                    style: Styless.textBold18.copyWith(color: AppColors.black),
                  ),
                ),
                const SizedBox(height: 10),
                AllSpecialtiesListView(
                  specs: state.specialities,
                ),
              ],
            );
          } else {
            return const Center(
              child: Text(
                "State is in initial ...",
                style: Styless.textBold25,
              ),
            );
          }
        },
      ),
    );
  }
}
