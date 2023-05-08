import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';

class SearchfilterWidget extends StatelessWidget {
  const SearchfilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xff08182A),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Filtrar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff08182A),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.clear),
                            color: const Color(0xff08182A),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Título',
                            style: TextStyle(color: Color(0xff08182A)),
                          ),
                          Expanded(child: TextField()),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Autor',
                            style: TextStyle(
                              color: Color(0xff08182A),
                            ),
                          ),
                          Expanded(child: TextField()),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Ano\npublicado',
                            style: TextStyle(
                              color: Color(0xff08182A),
                            ),
                          ),
                          Expanded(
                            child: RangeSlider(
                              inactiveColor: const Color(0xff08182A),
                              values: const RangeValues(0, 100),
                              min: 0,
                              max: 100,
                              divisions: 100,
                              labels: const RangeLabels('0', '100'),
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text('Rating'),
                            Expanded(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff08182A),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff08182A),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff08182A),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff08182A),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff08182A),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(color: Color(0xff08182A)),
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text('Em estoque')
                        ],
                      ),
                      const RouterButtonWidget(
                        text: "Filtrar",
                        route: '',
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(
          Icons.equalizer,
        ),
      ),
    );
  }
}
