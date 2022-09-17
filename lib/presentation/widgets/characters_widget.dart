import 'package:bb_app/constants/my_colors.dart';
import 'package:bb_app/data/models/characters.dart';

import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4.0),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: GridTile(
        child: Container(
          color: MyColors.myGrey,
          child: character.characterImage.isNotEmpty
              ? FadeInImage.assetNetwork(
                  placeholder: 'assets/images/cells.gif',
                  image: character.characterImage,
                )
              : Image.asset('assets/images/noImageFounded.jpg'),
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
              height: 1.3,
              fontSize: 16.0,
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
