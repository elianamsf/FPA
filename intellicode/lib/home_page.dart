import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('IntelliCode'),
        actions: [
          CustomSwitch(),
        ],
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
