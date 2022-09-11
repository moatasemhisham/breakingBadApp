import '/business_logic/cubit/characters_cubit.dart';
import '/constants/strings.dart';
import '/data/APIs/characters_api.dart';
import '/data/repository/characters_repository.dart';
import '/presentation/screens/character_details.dart';
import '/presentation/screens/characters_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: AllCharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailsScreen(),
        );
    }
    return null;
  }
}
