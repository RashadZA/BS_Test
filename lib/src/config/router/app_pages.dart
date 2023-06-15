import 'package:bs_test/src/data/datasources/remote/api_call.dart';
import 'package:bs_test/src/data/repositories/api_repositories.dart';
import 'package:bs_test/src/presentation/screens/home_controller.dart';
import 'package:bs_test/src/presentation/screens/home_screen.dart';
import 'package:bs_test/src/presentation/screens/repo_details_controller.dart';
import 'package:bs_test/src/presentation/screens/repo_details_screen.dart';
import 'package:bs_test/src/presentation/screens/unknown_404_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final unknownRoute = GetPage(
    name: _Paths.unknown404,
    page: () => const Unknown404Screen(),
  );
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<HomeController>(() => HomeController()),
      ),
      children: [
        GetPage(
          name: _Paths.repoDetails,
          page: () => const RepoDetailsScreen(),
          binding: BindingsBuilder(
                () => Get.lazyPut<RepoDetailsController>(() => RepoDetailsController()),
          ),
        ),
      ],
    ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
      Get.lazyPut<APICall>(() => APICall(), fenix: true);
    });
  }
}
