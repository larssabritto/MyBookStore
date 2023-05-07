import 'package:flutter/material.dart';
import '../../../../../components/bottom_navigation_widget.dart';


class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);


  List<Widget> _montarNavegacao() {
    return [
      IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.home_rounded),color: Color(0xff08182A),),
      IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded),color: Color(0xff08182A),),
      IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined),color: Color(0xff08182A),),
      IconButton(onPressed: () {}, icon: const Icon(Icons.person),color: Color(0xff08182A),),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigation(
        child: _montarNavegacao(),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
