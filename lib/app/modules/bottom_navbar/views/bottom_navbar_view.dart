import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_track/app/modules/bottom_navbar/controllers/bottom_navbar_controller.dart';
import 'package:pet_track/app/modules/customer_home/views/customer_home_view.dart';
import 'package:pet_track/app/modules/profile/views/profile_view.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  const BottomNavbarView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,

        body: IndexedStack(
          index: controller.currentIndex.value,
          children: const [CustomerHomeView(), ProfileView()],
        ),

        bottomNavigationBar: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.sand.withOpacity(0.4),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,

                  currentIndex: controller.currentIndex.value,
                  onTap: controller.changeTab,

                  showSelectedLabels: false,
                  showUnselectedLabels: false,

                  selectedItemColor: AppColors.sand,
                  unselectedItemColor: Colors.grey,

                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      activeIcon: CircleIcon(icon: Icons.home),
                      label: '',
                    ),

                    // BottomNavigationBarItem(
                    //   icon: Icon(Icons.medical_information),
                    //   activeIcon: CircleIcon(icon: Icons.medical_information),
                    //   label: '',
                    // ),

                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      activeIcon: CircleIcon(icon: Icons.person),

                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.sand,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
