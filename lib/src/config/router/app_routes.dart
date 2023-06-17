part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const unknown404 = _Paths.unknown404;
  static const splash = _Paths.splash;
  static const home = _Paths.home;
  static const repoDetails = home + _Paths.repoDetails;
}

abstract class _Paths {
  static const unknown404 = '/404';
  static const splash = '/splash';
  static const home = '/home';
  static const repoDetails = '/repoDetails';

}