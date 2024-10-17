import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/services/dialog_service.dart';
import '../../domain/entity/character_entity.dart';
import '../../domain/provider/character_provider.dart';

class CharacterController
    extends AutoDisposeAsyncNotifier<List<CharacterEntity>> {
  @override
  FutureOr<List<CharacterEntity>> build() async => [];

  Future<List<CharacterEntity>> getCharacters(BuildContext context) async {
    final characterRepo = ref.read(characterApiProvider);
    final dialogService = ref.read(dialogServiceProvider);

    try {
      final characters = await characterRepo.getCharacters();
      state = AsyncData(characters);
      return characters;
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
      dialogService.showErrorDialog(
        context,
        title: "Error al obtener los datos",
        message: error.toString(),
      );
      rethrow;
    }
  }
}

final characterControllerProvider = AutoDisposeAsyncNotifierProvider<
    CharacterController, List<CharacterEntity>>(
  CharacterController.new,
);
