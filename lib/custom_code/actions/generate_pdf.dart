// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future generatePdf(
  String? title,
  String? body,
) async {
  title = title ?? '';
  body = body ?? '';

  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          pw.Text(title ?? '',
              style: const pw.TextStyle(
                color: PdfColors.cyan,
                fontSize: 40,
              )),
          pw.Divider(thickness: 4),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(width: 10),
              pw.Text(body ?? ''),
            ],
          ),
        ]);
      }));
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
