import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'Navbar.dart';
import 'mobile.dart';

class DossierMedical extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7BC764),
        centerTitle: true,
        title: Text("Dossier Médical"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children:[
            Card(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text('Dossier medical n°001'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.picture_as_pdf)
                  ),
                    ButtonBar(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Voir'),
                          onPressed: _dossierMed,
                        ),
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Download'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Card(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text('Dossier medical n°002'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.picture_as_pdf)
                  ),
                    ButtonBar(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Voir'),
                          onPressed: _dossierMed,
                        ),
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Download'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Card(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text('Dossier medical n°003'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.picture_as_pdf)
                  ),
                    ButtonBar(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Voir'),
                          onPressed: _dossierMed,
                        ),
                        // ignore: deprecated_member_use
                        FlatButton(
                          child: const Text('Download'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
          ),
      )
    );
  }
Future<void> _dossierMed() async{
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

  page.graphics.drawString("Voici votre dossier Médical du 25 novembre 2022", PdfStandardFont(PdfFontFamily.helvetica, 30));

  page.graphics.drawImage(
    PdfBitmap(await _readImageData("dossiermed.jpg")),
    Rect.fromLTWH(0, 100, 440, 550)
  );

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'DossierMedical.pdf');
  }
}
Future<Uint8List> _readImageData(String name) async{
  final data = await rootBundle.load('assets/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}