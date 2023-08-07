import 'package:get/get.dart';
import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/dashboardviews/ads/bindings/ads_binding.dart';
import '../modules/dashboard/dashboardviews/ads/views/ads_view.dart';
import '../modules/dashboard/dashboardviews/deals/bindings/deals_binding.dart';
import '../modules/dashboard/dashboardviews/deals/views/deals_view.dart';
import '../modules/dashboard/dashboardviews/home/bindings/home_binding.dart';
import '../modules/dashboard/dashboardviews/home/views/home_view.dart';
import '../modules/dashboard/dashboardviews/popularcategory/bindings/popularcategory_binding.dart';
import '../modules/dashboard/dashboardviews/popularcategory/views/popularcategory_view.dart';
import '../modules/dashboard/dashboardviews/sellewaste/bindings/sellewaste_binding.dart';
import '../modules/dashboard/dashboardviews/sellewaste/views/sellewaste_view.dart';
import '../modules/dashboard/dashboardviews/userstories/bindings/userstories_binding.dart';
import '../modules/dashboard/dashboardviews/userstories/views/userstories_view.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/location/bindings/location_binding.dart';
import '../modules/location/views/location_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/productlistscreen/bindings/productlistscreen_binding.dart';
import '../modules/productlistscreen/productlistfilter/bindings/productlistfilter_binding.dart';
import '../modules/productlistscreen/productlistfilter/views/productlistfilter_view.dart';
import '../modules/productlistscreen/views/productlistscreen_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/start/bindings/start_binding.dart';
import '../modules/start/views/start_view.dart';
import '../modules/subscription/bindings/subscription_binding.dart';
import '../modules/subscription/views/subscription_view.dart';
import '../modules/wishlist/bindings/wishlist_binding.dart';
import '../modules/wishlist/views/wishlist_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;
  // static const LOGIN = Routes.LOGIN;
  static const START = Routes.START;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.START,
      page: () => StartView(),
      binding: StartBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
      children: [
        GetPage(
          name: _Paths.SELLEWASTE,
          page: () => const SellewasteView(),
          binding: SellewasteBinding(),
          children: [
            GetPage(
              name: _Paths.SELLEWASTE,
              page: () => const SellewasteView(),
              binding: SellewasteBinding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.POPULARCATEGORY,
          page: () => PopularcategoryView(),
          binding: PopularcategoryBinding(),
        ),
        GetPage(
          name: _Paths.ADS,
          page: () => const AdsView(),
          binding: AdsBinding(),
        ),
        GetPage(
          name: _Paths.DEALS,
          page: () => DealsView(),
          binding: DealsBinding(),
        ),
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: _Paths.USERSTORIES,
          page: () => const UserstoriesView(),
          binding: UserstoriesBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.WISHLIST,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTION,
      page: () => const SubscriptionView(),
      binding: SubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTLISTSCREEN,
      page: () => const ProductlistscreenView(),
      binding: ProductlistscreenBinding(),
      children: [
        GetPage(
          name: _Paths.PRODUCTLISTFILTER,
          page: () => ProductlistfilterView(),
          binding: ProductlistfilterBinding(),
        ),
      ],
    ),
  ];
}
