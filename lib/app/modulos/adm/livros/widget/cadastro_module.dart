import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modulos/adm/livros/cadastrar_livros_view_widget.dart';
import 'package:mybookstore/app/modulos/main/views/livros/components/exibir_livros_widget.dart';


class LivrosModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const CadastrarLivrosViewWidget()),
        ChildRoute("/exibir", child: (context, args) => const ExibirLivros()),
      ];
}