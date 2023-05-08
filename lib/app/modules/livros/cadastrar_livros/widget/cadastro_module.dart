import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/livros/cadastrar_livros/cadastrar_livros_view_widget.dart';
import 'package:mybookstore/app/modules/livros/exibir_livros/exibir_livros_widget.dart';


class LivrosModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const CadastrarLivrosViewWidget()),
        ChildRoute("/exibir", child: (context, args) => ExibirLivros()),
      ];
}