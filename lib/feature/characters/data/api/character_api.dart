import 'package:http/http.dart' as http;
import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/domain/repositories/character_repository.dart';

class CharacterApi implements CharacterRepository {
  @override
  Future<List<CharacterEntity>> getCharacters() async {
    const String apiUrl = 'https://rickandmortyapi.com/api/character';
    final result = await http.get(Uri.parse(apiUrl));
  }
}
