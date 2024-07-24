import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../pokemon/models/data/pokemon_api_model.dart';
import '../models/data_sources/local_data_source.dart';

part 'demo_helper.g.dart';

@riverpod
DemoHelper demoHelper(DemoHelperRef ref) {
  return DemoHelper(ref);
}

class DemoHelper {
  DemoHelper(this.ref);

  // factory DemoHelper(Ref ref) {
  //   _instance.ref = ref;
  //   return _instance;
  // }

  // DemoHelper._();

  // static final _instance = DemoHelper._();

  final Ref ref;

  final bool _artificialDelay = true;

  Future<void> artificialDelay([int ms = 4000]) async {
    if (_artificialDelay) {
      await Future.delayed(Duration(milliseconds: ms));
    }
  }

  Future<void> resetLocal() async {
    await _local.createAll([]);
  }

  LocalDataSource<PokemonApiModel> get _local =>
      ref.read(localDataSourceProvider);
}
