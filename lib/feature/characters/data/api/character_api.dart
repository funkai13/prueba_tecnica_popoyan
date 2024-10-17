import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prueba_tecnica_popoyan/core/utils/constanst.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/domain/repositories/character_repository.dart';

import '../models/character_model.dart';

class CharacterApi implements CharacterRepository {
  final String apiUrl = ApiConfig.apiUrl;

  @override
  Future<List<CharacterEntity>> getCharacters() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body)['results'];
        return data.map((json) => CharacterModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load characters: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching characters: $e');
    }
  }
}
