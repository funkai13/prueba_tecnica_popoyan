import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';

abstract class CharacterRepository {
  Future<List<CharacterEntity>> getCharacters();
}
