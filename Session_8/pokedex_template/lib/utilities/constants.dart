import 'package:flutter/material.dart';

const kSearchBarMargins = EdgeInsets.symmetric(
  horizontal: 20.0,
  vertical: 20.0,
);
const kSearchBarInputDecoration = InputDecoration(
  hintText: 'Enter Pokemon Name',
  suffixIcon: Icon(
    Icons.search,
  ),
);

const kPokemonCardMargins = EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0);