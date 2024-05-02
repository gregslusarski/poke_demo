// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonApiModelImpl _$$PokemonApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonApiModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      baseExperience: (json['base_experience'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      isDefault: json['is_default'] as bool,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonApiModelImplToJson(
        _$PokemonApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'weight': instance.weight,
      'order': instance.order,
      'is_default': instance.isDefault,
      'abilities': instance.abilities,
      'types': instance.types,
      'sprites': instance.sprites,
      'stats': instance.stats,
    };

_$PokemonAbilityImpl _$$PokemonAbilityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonAbilityImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonAbilityImplToJson(
        _$PokemonAbilityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonTypeImpl _$$PokemonTypeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypeImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonTypeImplToJson(_$PokemonTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonSpritesImpl _$$PokemonSpritesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSpritesImpl(
      frontDefault: json['front_default'] as String,
      frontShiny: json['front_shiny'] as String,
      frontFemale: json['front_female'] as String,
      frontShinyFemale: json['front_shiny_female'] as String,
      backDefault: json['back_default'] as String,
      backShiny: json['back_shiny'] as String,
      backFemale: json['back_female'] as String,
      backShinyFemale: json['back_shiny_female'] as String,
    );

Map<String, dynamic> _$$PokemonSpritesImplToJson(
        _$PokemonSpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'front_female': instance.frontFemale,
      'front_shiny_female': instance.frontShinyFemale,
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'back_female': instance.backFemale,
      'back_shiny_female': instance.backShinyFemale,
    };

_$PokemonStatImpl _$$PokemonStatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: PokemonStatDetail.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatImplToJson(_$PokemonStatImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$PokemonStatDetailImpl _$$PokemonStatDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatDetailImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonStatDetailImplToJson(
        _$PokemonStatDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };