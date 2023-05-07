import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/main/views/funcionario/funcionarios_view_widget.dart';

import '../main/views/funcionario/cadastro_funcionario_widget.dart';

class FuncionariosModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [
        ChildRoute("/funcionarios", child: (context, args) => const FuncionariosViewWidget()),
        ChildRoute("/usuario", child: (context, args) => CadastrarFuncionarioWidget()),
      ];
}