import 'package:afouaclient/Login_screen.dart';
import 'package:afouaclient/pages/notification.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("NomPatient", style: TextStyle(fontSize: 25),),
            accountEmail: Text("PrenomPatient", style: TextStyle(fontSize: 20),),
            decoration: BoxDecoration(
              color: Colors.green
            ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifications()),
            );
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Nous Contacter"),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("A Propos"),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Se Déconnecter"),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
              },
            )
        ],
      ),
    );
  }
}