import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/models/data_sources/remote_data_source.dart';
import '../data/pokemon_api_model.dart';

part 'pokemon_remote_data_source.g.dart';

class PokemonRemoteDataSource implements RemoteDataSource<PokemonApiModel> {
  @override
  Future<PokemonApiModel> read(int id) async {
    try {
      final url = 'https://pokeapi.co/api/v2/pokemon/$id';
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 4));
      if (response.statusCode != 200) throw Exception();
      return _parsePokemon(response.body);
    } catch (e) {
      throw Exception(
          'Unable to read Pokemon with the id: $id from the remote API, $e');
    }
  }

  PokemonApiModel _parsePokemon(String jsonStr) {
    final jsonObj = jsonDecode(jsonStr) as Map<String, dynamic>;
    return PokemonApiModel.fromJson(jsonObj);
  }
}

@riverpod
RemoteDataSource<PokemonApiModel> remoteDataSource(RemoteDataSourceRef ref) {
  return PokemonRemoteDataSource();
}
