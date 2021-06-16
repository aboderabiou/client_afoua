import 'package:afouaclient/pages/mobile.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'Navbar.dart';

class ResultatExamen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7BC764),
        centerTitle: true,
        title: Text("Mes Examens"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
          child: Text("Examen de vih"),
          onPressed: _dossierMed,
        ),
        ElevatedButton(
          child: Text("Examen d'hepatite"),
          onPressed: _dossierMed,
        ),
        ElevatedButton(
          child: Text("Corona Virus"),
          onPressed: _dossierMed,
        ),
          ],
        ),
        ),
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