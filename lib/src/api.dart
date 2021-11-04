import 'dart:typed_data';

import 'package:http/http.dart' as http;

import '../avataaar_image_2.dart';

class AvataaarsApi {
  static const baseUrl = 'https://avataaars.io';

  const AvataaarsApi();

  String getUrl(String baseUrl, Avataaar avatar, double width) {
    final params = avatar.pieceEntries.map((it) {
      final key = it.key[0].toLowerCase() + it.key.substring(1);
      return '$key=${it.value}';
    }).join('&');
    return '$baseUrl/png/$width?$params';
  }

  Future<Uint8List> getImage(Avataaar avatar, double width) => http
      .get(Uri(path: getUrl(baseUrl, avatar, width)))
      .then((it) => it.bodyBytes);
}
