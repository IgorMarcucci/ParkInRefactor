import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:park_in_refactor/app/theme/theme.dart';
import 'package:park_in_refactor/app/widgets/social_area.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('HomeView - Build');
    final CustomTheme tema = Theme.of(context).extension<CustomTheme>()!;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: tema.imageBackground,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.transparent,
                child: const ParkInAreaHome(),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: tema.paletteDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextArea(
                      topSize: MediaQuery.of(context).size.height * 0.08,
                      size: MediaQuery.of(context).size.height * 0.12,
                      text: 'Cliente',
                      callback: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const ClientePage()),
                            (route) => false);
                      },
                      secondText: 'Funcionário',
                      secondCallback: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const FuncionarioPage()),
                            (route) => false);
                      },
                    ),
                    const SocialArea(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
