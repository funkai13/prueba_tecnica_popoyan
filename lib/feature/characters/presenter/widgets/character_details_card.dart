import 'package:flutter/material.dart';

import '../../domain/entity/character_entity.dart';

class CharacterDetailsCard extends StatelessWidget {
  final CharacterEntity character;

  const CharacterDetailsCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            infoRow('Name', character.name, context),
            const Divider(),
            infoRow('Gender', character.gender, context),
            const Divider(),
            infoRow('Type', character.type.isEmpty ? 'unknown' : character.type,
                context),
            const Divider(),
            infoRow(
                'Status',
                character.status.isEmpty ? 'unknown' : character.status,
                context),
            const Divider(),
            infoRow('Especie', character.species, context),
          ],
        ),
      ),
    );
  }
}

Widget infoRow(String label, String value, BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      const SizedBox(width: 8),
      Flexible(
        child: Text(
          value,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    ],
  );
}
