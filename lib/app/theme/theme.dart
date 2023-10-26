import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final BoxDecoration? cardTheme;
  final BoxDecoration? paletteDecoration;
  final BoxDecoration? paletteDecorationInverted;
  final BoxDecoration? decorationMainButton;
  final BoxDecoration? decorationListButton;
  final BoxDecoration? imageBackground;
  final ButtonStyle? styleButton;
  final TextStyle? mainTextBlack;
  final TextStyle? mainTextWhite;
  final TextStyle? textMediumBlack;
  final TextStyle? textMediumWhite;
  final TextStyle? smallTextBlack;
  final TextStyle? smallTextWhite;
  

  CustomTheme({
    this.paletteDecoration,
    this.paletteDecorationInverted,
    this.cardTheme,
    this.decorationMainButton,
    this.decorationListButton,
    this.imageBackground,
    this.styleButton,
    this.mainTextBlack,
    this.mainTextWhite,
    this.textMediumBlack,
    this.textMediumWhite,
    this.smallTextBlack,
    this.smallTextWhite,
  });

  @override
  CustomTheme copyWith({
    BoxDecoration? paletteDecoration,
    BoxDecoration? paletteDecorationInverted,
    BoxDecoration? cardTheme,
    BoxDecoration? decorationMainButton,
    BoxDecoration? decorationListButton,
    BoxDecoration? imageBackground,
    ButtonStyle? styleButton,
    TextStyle? mainTextBlack,
    TextStyle? mainTextWhite,
    TextStyle? textMediumWhite,
    TextStyle? textMediumBlack,
    TextStyle? smallTextBlack,
    TextStyle? smallTextWhite,
  }) {
    return CustomTheme(
      paletteDecoration: paletteDecoration ?? this.paletteDecoration,
      paletteDecorationInverted:
          paletteDecorationInverted ?? this.paletteDecorationInverted,
      cardTheme: cardTheme ?? this.cardTheme,
      decorationMainButton: decorationMainButton ?? this.decorationMainButton,
      decorationListButton: decorationListButton ?? this.decorationListButton,
      imageBackground: imageBackground ?? this.imageBackground,
      styleButton: styleButton ?? this.styleButton,
      mainTextBlack: mainTextBlack ?? this.mainTextBlack,
      mainTextWhite: mainTextWhite ?? this.mainTextWhite,
      textMediumBlack: textMediumBlack ?? this.textMediumBlack,
      textMediumWhite: textMediumWhite ?? this.textMediumWhite,
      smallTextBlack: smallTextBlack ?? this.smallTextBlack,
      smallTextWhite: smallTextWhite ?? this.smallTextWhite,
    );
  }

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) {
      return this;
    }
    return CustomTheme(
      paletteDecoration:
          BoxDecoration.lerp(paletteDecoration, other.paletteDecoration, t),
      paletteDecorationInverted: BoxDecoration.lerp(
          paletteDecorationInverted, other.paletteDecorationInverted, t),
      cardTheme: BoxDecoration.lerp(cardTheme, other.cardTheme, t),
      decorationMainButton: BoxDecoration.lerp(
          decorationMainButton, other.decorationMainButton, t),
      decorationListButton: BoxDecoration.lerp(decorationListButton, other.decorationListButton, t),
      imageBackground: BoxDecoration.lerp(imageBackground, other.imageBackground, t),
      styleButton: ButtonStyle.lerp(styleButton, other.styleButton, t),
      mainTextBlack: TextStyle.lerp(mainTextBlack, other.mainTextBlack, t),
      mainTextWhite: TextStyle.lerp(mainTextWhite, other.mainTextWhite, t),
      textMediumBlack: TextStyle.lerp(textMediumBlack, other.textMediumBlack, t),
      textMediumWhite: TextStyle.lerp(textMediumWhite, other.textMediumBlack, t),
      smallTextBlack: TextStyle.lerp(smallTextBlack, other.smallTextBlack, t),
      smallTextWhite: TextStyle.lerp(smallTextWhite, other.smallTextWhite, t),
    );
  }
}

ThemeData themeData() => ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.black,
          error: const Color.fromARGB(255, 255, 120, 120)),
      extensions: <ThemeExtension<dynamic>>[
        CustomTheme(
          styleButton: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // <-- Radius
            ),
            elevation: 2,
            shadowColor: Colors.black
          ),
          decorationListButton: const BoxDecoration(
            color: Color.fromARGB(255, 225, 224, 224),
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(148, 87, 38, 38),
                offset: Offset(2, 4),
                blurRadius: 2.0,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          decorationMainButton: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x63282828),
                offset: Offset(2, 4),
                blurRadius: 5.0,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          cardTheme: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(100, 40, 40, 40),
                offset: Offset(2, 4),
                blurRadius: 7.0,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          paletteDecoration: const BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF2B2B2B),
                offset: Offset(0, 4),
                blurRadius: 7,
                blurStyle: BlurStyle.normal,
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          paletteDecorationInverted: const BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF2B2B2B),
                offset: Offset(0, -4),
                blurRadius: 7,
                blurStyle: BlurStyle.normal,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          mainTextBlack: GoogleFonts.poppins(
            fontSize: 26,
            color: Colors.black,
          ),
          mainTextWhite: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
          textMediumWhite: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          textMediumBlack: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
          ),
          smallTextBlack: GoogleFonts.poppins(
            fontSize: 12,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          smallTextWhite: GoogleFonts.poppins(
            fontSize: 12,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          imageBackground: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
