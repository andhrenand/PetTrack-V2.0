import 'package:get/get.dart';

import '../../utils/widgets/splash_screen.dart';
import '../modules/add_medical_record/bindings/add_medical_record_binding.dart';
import '../modules/add_medical_record/views/add_medical_record_view.dart';
import '../modules/bottom_navbar/bindings/bottom_navbar_binding.dart';
import '../modules/bottom_navbar/views/bottom_navbar_view.dart';
import '../modules/chat_room/bindings/chat_room_binding.dart';
import '../modules/chat_room/views/chat_room_view.dart';
import '../modules/customer_home/bindings/customer_home_binding.dart';
import '../modules/customer_home/views/customer_home_view.dart';
import '../modules/features/medical/medical_add/bindings/medical_add_binding.dart';
import '../modules/features/medical/medical_add/views/medical_add_view.dart';
import '../modules/features/medical/medical_history/bindings/medical_history_binding.dart';
import '../modules/features/medical/medical_history/views/medical_history_view.dart';
import '../modules/features/medical/medical_home/bindings/medical_home_binding.dart';
import '../modules/features/medical/medical_home/views/medical_home_view.dart';
import '../modules/features/medical/medication_reminder/bindings/medication_reminder_binding.dart';
import '../modules/features/medical/medication_reminder/views/medication_reminder_view.dart';
import '../modules/features/pets/pet_add/bindings/pet_add_binding.dart';
import '../modules/features/pets/pet_add/views/pet_add_view.dart';
import '../modules/features/pets/pet_care/bindings/pet_care_binding.dart';
import '../modules/features/pets/pet_care/views/pet_care_view.dart';
import '../modules/features/pets/pet_detail/bindings/pet_detail_binding.dart';
import '../modules/features/pets/pet_detail/views/pet_detail_view.dart';
import '../modules/features/pets/pet_home/bindings/pet_home_binding.dart';
import '../modules/features/pets/pet_home/views/pet_home_view.dart';
import '../modules/features/pets/pet_list/bindings/pet_list_binding.dart';
import '../modules/features/pets/pet_list/views/pet_list_view.dart';
import '../modules/features/shop/payment/bindings/payment_binding.dart';
import '../modules/features/shop/payment/views/payment_view.dart';
import '../modules/features/shop/shop_home/bindings/shop_home_binding.dart';
import '../modules/features/shop/shop_home/views/shop_home_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/pet_activity/bindings/pet_activity_binding.dart';
import '../modules/pet_activity/views/pet_activity_view.dart';
import '../modules/product_detail/bindings/product_detail_binding.dart';
import '../modules/product_detail/views/product_detail_view.dart';
import '../modules/product_list/bindings/product_list_binding.dart';
import '../modules/product_list/views/product_list_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/root_nav/views/root_nav_view.dart';
import '../modules/service_detail/bindings/service_detail_binding.dart';
import '../modules/service_detail/views/service_detail_view.dart';
import '../modules/service_list/bindings/service_list_binding.dart';
import '../modules/service_list/views/service_list_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/stock/bindings/stock_binding.dart';
import '../modules/stock/views/stock_view.dart';
import '../modules/features/shop/transaction_history/bindings/transaction_history_binding.dart';
import '../modules/features/shop/transaction_history/views/transaction_history_view.dart';
import '../modules/features/pets/vaccine_tracker/bindings/vaccine_tracker_binding.dart';
import '../modules/features/pets/vaccine_tracker/views/vaccine_tracker_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: Routes.ROOT, page: () => const RootNavView()),
    GetPage(name: Routes.SPLASH, page: () => const SplashScreen()),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => const BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
    GetPage(
      name: _Paths.ADD_MEDICAL_RECORD,
      page: () => const AddMedicalRecordView(),
      binding: AddMedicalRecordBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.STOCK,
      page: () => const StockView(),
      binding: StockBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_ROOM,
      page: () => const ChatRoomView(),
      binding: ChatRoomBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_HOME,
      page: () => const CustomerHomeView(),
      binding: CustomerHomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_HOME,
      page: () => const ShopHomeView(),
      binding: ShopHomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_LIST,
      page: () => const ProductListView(),
      binding: ProductListBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => const ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_LIST,
      page: () => const ServiceListView(),
      binding: ServiceListBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_DETAIL,
      page: () => const ServiceDetailView(),
      binding: ServiceDetailBinding(),
    ),
    GetPage(
      name: _Paths.MEDICAL_HOME,
      page: () => const MedicalHomeView(),
      binding: MedicalHomeBinding(),
    ),
    GetPage(
      name: _Paths.VACCINE_TRACKER,
      page: () => const VaccineTrackerView(),
      binding: VaccineTrackerBinding(),
    ),
    GetPage(
      name: _Paths.MEDICAL_HISTORY,
      page: () => const MedicalHistoryView(),
      binding: MedicalHistoryBinding(),
    ),
    GetPage(
      name: _Paths.MEDICAL_ADD,
      page: () => const MedicalAddView(),
      binding: MedicalAddBinding(),
    ),
    GetPage(
      name: _Paths.MEDICATION_REMINDER,
      page: () => const MedicationReminderView(),
      binding: MedicationReminderBinding(),
    ),
    GetPage(
      name: _Paths.PET_LIST,
      page: () => const PetListView(),
      binding: PetListBinding(),
    ),
    GetPage(
      name: _Paths.PET_ADD,
      page: () => const PetAddView(),
      binding: PetAddBinding(),
    ),
    GetPage(
      name: _Paths.PET_DETAIL,
      page: () => const PetDetailView(),
      binding: PetDetailBinding(),
    ),
    GetPage(
      name: _Paths.PET_ACTIVITY,
      page: () => const PetActivityView(),
      binding: PetActivityBinding(),
    ),
    GetPage(
      name: _Paths.PET_CARE,
      page: () => const PetCareView(),
      binding: PetCareBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.PET_HOME,
      page: () => const PetHomeView(),
      binding: PetHomeBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_HISTORY,
      page: () => const TransactionHistoryView(),
      binding: TransactionHistoryBinding(),
    ),
  ];
}
