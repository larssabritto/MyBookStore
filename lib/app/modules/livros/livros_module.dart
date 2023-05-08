import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modules/livros/cadastrar_livros/cadastrar_livros_view_widget.dart';
import 'package:mybookstore/app/modules/livros/exibir_livros/exibir_livros_widget.dart';

class LivrosModule extends Module {

  @override
  List<ModularRoute> get routes =>
      [
        ChildRoute("/novo", child: (context, args) => const CadastrarLivrosViewWidget()),
        ChildRoute("/:idBook", child: (context, args) => ExibirLivros(idBook: args.params['idBook'],)),
      ];

}