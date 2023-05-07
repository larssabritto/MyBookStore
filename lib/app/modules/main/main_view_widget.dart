import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/bottom_sheet_item.dart';
import 'package:mybookstore/app/modules/main/views/funcionario/funcionarios_view_widget.dart';
import 'package:mybookstore/app/modules/main/views/home/home_body_widget.dart';
import 'package:mybookstore/app/modules/main/views/livros/livros_view_widget.dart';
import 'package:mybookstore/app/modules/main/views/perfil/perfil_view_widget.dart';

class MainViewWidget extends StatefulWidget {
  const MainViewWidget({Key? key}) : super(key: key);

  @override
  State<MainViewWidget> createState() => _MainViewWidgetState();
}

class _MainViewWidgetState extends State<MainViewWidget> {
  int selectedPageIndex = 0;
  final List<Widget> _availableWidgets = <Widget> [
    HomeBodyWidget(),
    const FuncionariosViewWidget(),
    const LivrosViewWidget(),
    const PerfilViewWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _availableWidgets[selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        selectedIndex: selectedPageIndex,
        destinations: const [
          BottomSheetItem(
            route: "/home/",
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomSheetItem(
            route: "/funcionarios/",
            icon: Icon(Icons.search),
            label: "Funcionários",
          ),
          BottomSheetItem(
            icon: Icon(Icons.book_outlined),
            label: 'Livros',
            route: "/livros/",
          ),
          BottomSheetItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Meu perfil',
            route: "/perfil/",
          ),
        ],
      ),
    );
  }
}
