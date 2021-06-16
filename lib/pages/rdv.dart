import 'package:flutter/material.dart';

import 'Navbar.dart';

class RendezVous extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7BC764),
        centerTitle: true,
        title: Text("Rendez-vous"),
      ),
      drawer: NavBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Votre prochain rendez-vous est prévu pour le 05/09/2222'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.person)
                  ),
                    ButtonBar(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Annuler'),
                          onPressed: (){},
                        ),
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Modifier'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      );
  }
}