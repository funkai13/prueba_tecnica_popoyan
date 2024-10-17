import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/generic_grid.dart';
import '../../domain/entity/character_entity.dart';
import '../controller/character_controller.dart';
import 'character_card.dart';

class CharactersGrid extends ConsumerStatefulWidget {
  const CharactersGrid({super.key});

  @override
  ConsumerState<CharactersGrid> createState() => _CharactersGridState();
}

class _CharactersGridState extends ConsumerState<CharactersGrid> {
  @override
  void initState() {
    super.initState();
    _fetchCharacters();
  }

  Future<void> _fetchCharacters() async {
    await ref.read(characterControllerProvider.notifier).getCharacters(context);
  }

  @override
  Widget build(BuildContext context) {
    final asyncCharacters = ref.watch(characterControllerProvider);

    return asyncCharacters.when(
      data: (characters) => RefreshIndicator(
        onRefresh: () async {
          await _fetchCharacters();
        },
        child: GenericGrid<CharacterEntity>(
          items: characters,
          itemBuilder: (character) => CharacterCard(
            character: character,
            imageHeight: 120,
            imageWidth: 120,
          ),
          maxCrossAxisExtent: 600,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 150,
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
