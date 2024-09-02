import 'package:doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc/features/home/ui/widget/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData> specializationsDataList; 
  const DoctorSpecialityListView({super.key, required this.specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: specializationsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewitem(itemIndex: index, specializationsData: specializationsDataList[index],);
        },
      ),
    );
  }
}
