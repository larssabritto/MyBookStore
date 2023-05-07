import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/splashscreen/splashscreen_view_widget.dart';

class SplashScreenModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/',
        child: (context, args) => const SplashscreenViewWidget()),
  ];
}