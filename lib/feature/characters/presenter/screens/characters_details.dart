import 'package:flutter/material.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/presenter/widgets/character_details_card.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final CharacterEntity character;

  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'character-name-${character.name}',
          child: Material(
            color: Colors.transparent,
            child: Text(
              character.name,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCharacterImage(),
                      const SizedBox(height: 24),
                      CharacterDetailsCard(character: character),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCharacterImage() {
    return Center(
      child: Hero(
        tag: 'character-image-${character.name}',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            character.image,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
