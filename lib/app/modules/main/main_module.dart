import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/adm/livros/cadastrar_livros_body_widget.dart';
import 'package:mybookstore/app/modules/main/main_view_widget.dart';
import 'package:mybookstore/app/modules/main/views/funcionario/cadastro_funcionario_widget.dart';
import 'package:mybookstore/app/modules/main/views/home/components/listar_livros_home_widget.dart';
import 'package:mybookstore/app/modules/main/views/livros/components/exibir_livros_widget.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const MainViewWidget()),
        ChildRoute("/exibir", child: (context, args) => const ExibirLivros()),
        ChildRoute("/cadastrar", child: (context, args) => const CadastrarLivrosBody()),
        ChildRoute("/usuario", child: (context, args) => CadastrarFuncionarioWidget()),
        ChildRoute("/listar", child: (context, args) => ListarLivrosHome()),
      ];
}
