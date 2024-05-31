import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intellicode/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget _dashboard() {
    return ListView(
      children: [
        Text('IntelliCode 1', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 2', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 3', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 4', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 5', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 6', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 7', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 8', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 9', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 10', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 11', style: TextStyle(fontSize: 50)),
        Text('IntelliCode 12', style: TextStyle(fontSize: 50)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('IntelliCode'),
        actions: const [CustomNotify()],
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/git_branch.png',
                  fit: BoxFit.fitHeight)),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _dashboard()
        ],
      ),

      /*  
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('InteliCode'),
                Container(width: 10, height: 10),
                CustomSwitch(),
              ],
            )
            */
    );
  }
}

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
          tooltip: 'Increase volume by 10',
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/notificacoes');
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
        children: [
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
            onTap: () => Navigator.of(context).pushReplacementNamed('/commits'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaçoes'),
            subtitle: Text('Histórico de Notificações'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/notificacoes'),
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
