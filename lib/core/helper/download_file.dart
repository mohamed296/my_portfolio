import 'package:flutter/services.dart';
import 'dart:html' as html;

Future<void> downloadFile(String assetPath) async {
  final data = await rootBundle.load(assetPath);
  final List<int> bytes = data.buffer.asUint8List();
  final fileName = assetPath.split('/').last;

  final blob = html.Blob([Uint8List.fromList(bytes)]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.AnchorElement(href: url)
    ..target = 'webbrowser'
    ..download = fileName
    ..click();

  html.Url.revokeObjectUrl(url);
}
