import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_cubit.dart';
import 'package:doc_link_project/features/user_views/home/presentation/managers/specialities_cubit/specialities_states.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/widgets/all_specialties_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllSpecialitiesBlocBuilderListView extends StatelessWidget {
  const AllSpecialitiesBlocBuilderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialitiesCubit, SpecialitiesStates>(
      builder: (context, state) {
        if (state is GetAllSpecFailure) {
          return Center(
            child: Text(
              state.errMessage!,
              style: Styless.textBold25,
            ),
          );
        } else if (state is GetAllSpecSuccess) {
          return AllSpecialtiesListView(specs: state.specialities);
        } else {
          return const AllSpecialtiesListView();
        }
      },
    );
  }
}
