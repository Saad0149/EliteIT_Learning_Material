import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/chat_view_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/photo_view_view.dart';
import '../modules/home/views/video_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PHOTO,
      page: () => const PhotoView(),
    ),
    GetPage(
      name: _Paths.VIDEO,
      page: () => const VideoView(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
    ),
  ];
}
