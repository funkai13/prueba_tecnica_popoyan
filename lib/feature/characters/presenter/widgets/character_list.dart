import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/generic_list.dart';
import '../../domain/entity/character_entity.dart';
import '../controller/character_controller.dart';
import 'character_card.dart';

class CharactersList extends ConsumerStatefulWidget {
  const CharactersList({super.key});

  @override
  ConsumerState<CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends ConsumerState<CharactersList> {
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
        child: GenericList<CharacterEntity>(
          items: characters,
          itemBuilder: (character) => CharacterCard(
            character: character,
            imageHeight: 80,
            imageWidth: 80,
          ),
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
