import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc/features/home/logic/home_cubit.dart';
import 'package:doc/features/home/logic/home_state.dart';
import 'package:doc/features/home/ui/widget/speciality_list/speciality_list_view.dart';
import 'package:doc/features/home/ui/widget/doctors_list/doctors_bloc_builder.dart';
import 'package:doc/features/home/ui/widget/doctors_blue_container.dart';
import 'package:doc/features/home/ui/widget/doctors_list/doctors_list_view.dart';
import 'package:doc/features/home/ui/widget/doctors_speciality_see_all.dart';
import 'package:doc/features/home/ui/widget/home_top_bar.dart';
import 'package:doc/features/home/ui/widget/speciality_list/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
