import 'package:bb_app/business_logic/cubit/characters_cubit.dart';
import 'package:bb_app/constants/my_colors.dart';
import 'package:bb_app/data/models/characters.dart';
import 'package:bb_app/presentation/widgets/characters_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCharactersScreen extends StatefulWidget {
  const AllCharactersScreen({Key? key}) : super(key: key);

  @override
  State<AllCharactersScreen> createState() => _AllCharactersScreenState();
}

class _AllCharactersScreenState extends State<AllCharactersScreen> {
  List<Character>? allCharacters;

  @override
  void initState() {
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = (state).character;
          return buildLoadedListWidgets();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: MyColors.myYellow,
      ),
    );
  }

  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.myGrey,
        child: Column(
          children: [
            buildCharactersList(),
          ],
        ),
      ),
    );
  }

  Widget buildCharactersList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemBuilder: (ctx, index) {
          //TODO: not done
          return CharacterItem();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text(
          'Characters',
          style: TextStyle(color: MyColors.myGrey),
        ),
      ),
      body: buildBlocWidget(),
    );
  }
}
