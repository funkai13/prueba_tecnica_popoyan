import 'package:flutter/material.dart';
import 'package:prueba_tecnica_popoyan/core/utils/constanst.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/presenter/widgets/character_grid.dart';

import '../widgets/character_list.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Characters'),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < Breakpoints.mobile) {
            return Padding(
              padding: EdgeInsets.all(12),
              child: CharactersList(),
            );
          } else {
            return Padding(
              padding: EdgeInsets.all(12),
              child: CharactersGrid(),
            );
          }
        }));
  }
}
