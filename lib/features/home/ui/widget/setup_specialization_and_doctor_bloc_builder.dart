
import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc/features/home/logic/home_cubit.dart';
import 'package:doc/features/home/logic/home_state.dart';
import 'package:doc/features/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:doc/features/home/ui/widget/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetUpspecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SetUpspecializationAndDoctorsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => setUpLoading(),
          specializationsSuccess: (data) {
            var specializationsList = data.specializationDataList;
            return setUpSuccess(specializationsList);
          },
          specializationsError: (error) => setUpError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Center setUpError(ErrorHandler error) {
    return Center(
          child: Text(error.apiErrorModel.message ?? ''),
        );
  }

  Expanded setUpSuccess(List<SpecializationsData>? specializationsList) {
    return Expanded(
            child: Column(
              children: [
                DoctorSpecialityListView(
                  specializationsDataList: specializationsList?? [],
                ),
                verticalSpace(8),
                DoctorsListView(
                  doctorsList: specializationsList?[0].doctorsList?? [],
                ),
              ],
            ),
          );
  }

  Center setUpLoading() {
    return const Center(
          child: CircularProgressIndicator(),
        );
  }
}
