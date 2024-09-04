import 'package:doc/core/helpers/extentions.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];
  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());

    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];
          getDoctorsList(specializationId:  specializationsList?.first?.id);
      emit(HomeState.specializationsSuccess(specializationDataList: specializationsResponseModel.specializationDataList));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler: errorHandler));
    });
  }

  void getDoctorsList({required int? specializationId}) async {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationsId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(data: doctorsList));
    } else {
      emit(HomeState.doctorsError(
          errorHandler: ErrorHandler.handle("No Data Found")));
    }
  }

  /// returns list of doctors basesd on specialization id
  getDoctorsListBySpecializationsId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
