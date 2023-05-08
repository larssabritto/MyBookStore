import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/nova_loja_widget.dart';
import 'package:mybookstore/app/modules/auth/sign-in/sign_in_view_widget.dart';



class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [
        ChildRoute('/', child: (context, args) => const SignInViewWidget()),
        ChildRoute('/novaloja', child: (context, args) => NovaLojaWidget()),
      ];
}