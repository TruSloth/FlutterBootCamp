import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard({
    @required this.pokemonURL,
    @required this.pokemonName,
    @required this.pokemonType,
    @required this.pokemonAbility,
  });

  final String pokemonURL;
  final String pokemonName;
  final String pokemonType;
  final String pokemonAbility;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: kPokemonCardMargins,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: Image.network(pokemonURL),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  pokemonName,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  pokemonType,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text(
                  pokemonAbility,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
