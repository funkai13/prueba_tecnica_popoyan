import 'package:prueba_tecnica_popoyan/feature/characters/domain/entity/character_entity.dart';

class CharacterModel extends CharacterEntity {
  CharacterModel(
      {required super.id,
      required super.name,
      required super.status,
      required super.image,
      required super.gender,
      required super.species,
      required super.type});

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      image: json['image'],
      gender: json['gender'],
      species: json['species'],
      type: json['type'],
    );
  }
}
