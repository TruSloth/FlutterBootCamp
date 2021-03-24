import 'package:flutter/material.dart';
import 'screens/landing_page.dart';

void main() {
  // The goal of this app is to learn how to use APIs in a flutter app.
  // We'll make use of the PokeAPI found at https://pokeapi.co/docs/v2 in our app.
  // The app is supposed to allow us to search for a pokemon name
  // and get its details (Official Artwork, Name, Types, Abilities) displayed on screen.
  // Of course, you can have the app display other details if you want!
  // When you're done, you can consider improvements to the app, such as
  //    1. Displaying an indicator (eg. spinner) to let the user know that we're awaiting a response from the API.
  //    2. Letting the user know when they've searched for a pokemon that doesn't exist
  //    3. Displaying more data about the pokemon to the user (perhaps from different endpoints)

  /** The Workflow For Reference
    ToDo:
      1. Get User's Input
      2. Make GET Request to PokeAPI with User's Input and await Response
      3. If Request was successful, decode the Response. Otherwise, raise an error
      4. Assuming Request was successful, update the state of the LandingPage with the relevant decoded data
  */
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: LandingPage(),
    ),
  );
}
