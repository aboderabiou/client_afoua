import 'package:afouaclient/pages/rdv.dart';
import 'package:afouaclient/pages/resultats_examen.dart';
import 'package:flutter/material.dart';

import 'dossier_medical.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    DossierMedical(),
    RendezVous(),
    ResultatExamen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DossierMedical();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 10,
                    onPressed:(){
                      setState(() {
                        currentScreen = DossierMedical();
                        currentTab = 0;
                      });
                    } ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder,
                          color: currentTab == 0 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          "Dossier Médical",
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.green : Colors.grey,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 10,
                    onPressed:(){
                      setState(() {
                        currentScreen = RendezVous();
                        currentTab = 1;
                      });
                    } ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 1 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          "Rendez-vous",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.green : Colors.grey,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 10,
                    onPressed:(){
                      setState(() {
                        currentScreen = ResultatExamen();
                        currentTab = 3;
                      });
                    } ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.health_and_safety,
                          color: currentTab == 3 ? Colors.green : Colors.grey,
                        ),
                        Text(
                          "Résultats d'examen",
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.green : Colors.grey,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}