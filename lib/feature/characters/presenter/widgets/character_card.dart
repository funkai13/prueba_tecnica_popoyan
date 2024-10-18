import 'package:flutter/material.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/presenter/screens/characters_details_screen.dart';

class CharacterCard extends StatelessWidget {
  final CharacterEntity character;
  final double imageWidth;
  final double imageHeight;

  const CharacterCard({
    super.key,
    required this.character,
    required this.imageHeight,
    required this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CharacterDetailsScreen(character: character),
              ),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'character-image-${character.name}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(character.image),
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'character-name-${character.name}',
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          character.name,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      character.species,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
