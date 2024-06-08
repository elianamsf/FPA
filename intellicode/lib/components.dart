import 'package:flutter/material.dart';
import 'package:intellicode/controller/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) => AppController.instance.changeTheme(),
    );
  }
}

class CustomNotify extends StatelessWidget {
  const CustomNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications,
            size: 30.0,
          ),
          tooltip: 'Notificações',
          onPressed: () {
            Navigator.of(context).pushNamed('/notificacoes');
          },
        ),
      ],
    );
  }
}
