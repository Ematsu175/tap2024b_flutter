import 'package:flutter/material.dart';
import 'package:day_night_switcher/day_night_switcher.dart';



class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TAP2024B',
        style: TextStyle(fontFamily: 'EASPORTS15'),),
      ),
      drawer: myDrawer(context),
    );
  }

  Widget myDrawer(context){
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(
            accountName: Text('Emanuel Vazquez Almanza'),
            accountEmail: Text('20030356@itcelaya.edu.mx'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/challenge");
            },
            title: Text('Practica 1'),
            subtitle: Text('Challenge'),
            leading: Icon(Icons.code),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
              Navigator.pop(context);
              
            },
            title: Text('Salir'),
            leading: Icon(Icons.exit_to_app),
            trailing: Icon(Icons.chevron_right),
          ),
          
          DayNightSwitcher(
            isDarkModeEnabled: false, 
            onStateChanged: (isDarkModeEnabled) {
              
            },
          )
        ],
      
      ),
    );
  }
}