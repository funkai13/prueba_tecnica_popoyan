import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/api/character_api.dart';
import '../repositories/character_repository.dart';

final characterApiProvider =
    Provider<CharacterRepository>((_) => CharacterApi());
