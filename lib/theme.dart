import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF4b4e53),
    onPrimary: Colors.white,
    secondary: Colors.green,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    background: Color(0xFF4b4e53),
    onBackground: Colors.white,
    surface: Color(0xFF282c34),
    onSurface: Colors.white
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor:Color(0xFF282c34),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22
    )
  ),
  cardColor: const Color(0xFF282c34),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 30,
      color: Colors.white
    ),
    bodyMedium: TextStyle(
      fontSize: 20,
      color: Colors.white
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      color: Colors.black
    )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.disabled)) {
          return const Color(0xFF3f4145);
        }

        return Colors.blue;
      })
    )
  ),
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: Color(0xFF282c34),
    contentTextStyle: TextStyle(
      fontSize: 15,
      color: Colors.white
    )
  ),
  dividerTheme: const DividerThemeData(
    thickness: 1,
    space: 1,
    indent: 5,
    endIndent: 5,
    color: Colors.grey
  )
);