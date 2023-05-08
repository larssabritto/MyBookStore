import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/funcionarios/cadastro_funcionario_widget.dart';
import 'package:mybookstore/app/modules/livros/cadastrar_livros/cadastrar_livros_body_widget.dart';
import 'package:mybookstore/app/modules/livros/exibir_livros/exibir_livros_widget.dart';
import 'package:mybookstore/app/modules/main/main_view_widget.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const MainViewWidget()),
        ChildRoute("/livros/cadastrar", child: (context, args) => CadastrarLivrosBody()),
        ChildRoute("/usuario/cadastrar", child: (context, args) => CadastrarFuncionarioWidget()),
        ChildRoute("/livros/listar", child: (context, args) => ExibirLivros()),
      ];
}
