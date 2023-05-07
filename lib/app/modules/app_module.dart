import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/adm/livros/widget/cadastro_module.dart';
import 'package:mybookstore/app/modules/auth/auth_module.dart';
import 'package:mybookstore/app/modules/funcionarios/funcionarios_module.dart';
import 'package:mybookstore/app/modules/main/main_module.dart';
import 'package:mybookstore/app/modules/splashscreen/splash_module.dart';


class AppModule extends Module {
  AppModule() {Modular.setInitialRoute("/auth/");}

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/splash', module: SplashScreenModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/funcionarios', module: FuncionariosModule()),
    ModuleRoute('/livros', module: LivrosModule()),
  ];
}
