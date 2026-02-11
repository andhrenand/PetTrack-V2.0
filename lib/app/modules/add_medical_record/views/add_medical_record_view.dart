import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/utils/widgets/empty_state.dart';
import 'package:pet_track/utils/widgets/primary_button.dart';

import '../controllers/add_medical_record_controller.dart';

class AddMedicalRecordView extends GetView<AddMedicalRecordController> {
  const AddMedicalRecordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Records'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: EmptyState(
          icon: Icons.medical_information,
          title: "No medical records yet",
          subtitle: "Start adding vaccination or checkup history for pets.",
          action: SizedBox(
            width: 220.w,
            child: PrimaryButton(
              title: "Add Record",
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
