import 'package:bb_app/data/APIs/characters_api.dart';
import 'package:bb_app/data/models/characters.dart';

class CharactersRepository {
  CharactersApi charactersApi;
  CharactersRepository(this.charactersApi);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersApi.getAllCharacters();
    return characters
        .map(
          (character) => Character.fromJson(character),
        )
        .toList();
  }
}
