import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/features/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:doc/features/home/ui/widget/doctors_blue_container.dart';
import 'package:doc/features/home/ui/widget/doctors_list_view.dart';
import 'package:doc/features/home/ui/widget/doctors_speciality_see_all.dart';
import 'package:doc/features/home/ui/widget/home_top_bar.dart';
import 'package:flutter/material.dart';


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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
