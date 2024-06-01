import 'package:flutter/material.dart';
import 'package:intellicode/app_controller.dart';
import 'package:stack_chart/stack_chart.dart';

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
          icon: const Icon(Icons.notifications),
          tooltip: 'Notificações',
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/notificacoes');
          },
        ),
      ],
    );
  }
}

class CustomBack extends StatelessWidget {
  const CustomBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          tooltip: 'Home',
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
      ],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1573164574001-518958d9baa2?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Maria da Silva",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Software Engenieer",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            subtitle: Text('Tela de início'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/home'),
          ),
          ListTile(
            leading: Icon(Icons.commit),
            title: Text('Commits'),
            subtitle: Text('Status dos Commits'),
            onTap: () => Navigator.of(context).pushNamed('/commits'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaçoes'),
            subtitle: Text('Histórico de Notificações'),
            onTap: () => Navigator.of(context).pushNamed('/notificacoes'),
          ),
          ListTile(
              leading: Icon(Icons.mode_night),
              title: Text('Modo escuro'),
              subtitle: Text('Alternar em modo escuro ou claro'),
              onTap: () => AppController.instance.changeTheme()),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text('Finalizar Sessão'),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          )
        ],
      ),
    );
  }
}
