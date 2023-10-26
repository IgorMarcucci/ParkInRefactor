import 'package:flutter/material.dart';
import 'package:park_in_refactor/app/widgets/message.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({Key? key, required this.icon}) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        message(context, 'Redes sociais em desenvolvimento!');
      },
      child: Image(
        color: Colors.black87,
        image: AssetImage(icon),
        height: MediaQuery.of(context).size.height * 0.06,
        isAntiAlias: true,
      ),
    );
  }
}
