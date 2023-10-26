import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:park_in_refactor/app/theme/theme.dart';
import 'package:park_in_refactor/app/widgets/main_button.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({super.key, required this.callback});

  final Function callback;

  @override
  Widget build(BuildContext context) {
    final CustomTheme tema = Theme.of(context).extension<CustomTheme>()!;
    return AlertDialog(
      title: Text(
        'Confirmar ação',
        style: tema.mainTextBlack,
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: Column(children: <Widget>[
          Text(
            'Tem certeza que deseja continuar?',
            style: tema.smallTextBlack,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 140,
            height: 35,
            child: MainButton(
              text: 'Sim',
              callback: () {
                callback();
              },
              icon: Icons.check,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 140,
            height: 35,
            child: MainButton(
              text: 'Não',
              callback: () {
                context.pop();
              },
              icon: Icons.arrow_back,
            ),
          ),
        ]),
      ),
    );
  }
}
