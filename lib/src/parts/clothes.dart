import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Clothes implements AvataaarPart {
  const Clothes._({this.clotheType, this.clotheColor, this.graphicType});

  final ClotheType? clotheType;
  final ClotheColor? clotheColor;
  final GraphicType? graphicType;

  @override
  List get pieces => [clotheType, clotheColor, graphicType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Clothes &&
          runtimeType == other.runtimeType &&
          clotheType == other.clotheType &&
          clotheColor == other.clotheColor &&
          graphicType == other.graphicType;

  @override
  int get hashCode =>
      clotheType.hashCode ^ clotheColor.hashCode ^ graphicType.hashCode;

  static Clothes get blazerShirt =>
      Clothes._(clotheType: ClotheType.BlazerShirt);

  static Clothes get blazerSweater =>
      Clothes._(clotheType: ClotheType.BlazerSweater);

  static Clothes collarSweater(ClotheColor clotheColor) =>
      Clothes._(clotheType: ClotheType.CollarSweater, clotheColor: clotheColor);

  static Clothes graphicShirt(
          ClotheColor clotheColor, GraphicType graphicType) =>
      Clothes._(
          clotheType: ClotheType.GraphicShirt,
          clotheColor: clotheColor,
          graphicType: graphicType);

  static Clothes hoodie(ClotheColor clotheColor) =>
      Clothes._(clotheType: ClotheType.Hoodie, clotheColor: clotheColor);

  static Clothes overall(ClotheColor clotheColor) =>
      Clothes._(clotheType: ClotheType.Overall, clotheColor: clotheColor);

  static Clothes shirtCrewNeck(ClotheColor clotheColor) =>
      Clothes._(clotheType: ClotheType.ShirtCrewNeck, clotheColor: clotheColor);

  static Clothes shirtScoopNeck(ClotheColor clotheColor) => Clothes._(
      clotheType: ClotheType.ShirtScoopNeck, clotheColor: clotheColor);

  static Clothes shirtVNeck(ClotheColor clotheColor) =>
      Clothes._(clotheType: ClotheType.ShirtVNeck, clotheColor: clotheColor);

  static Clothes? get random {
    final clotheType =
        randomPiece(ClotheType.values) ?? ClotheType.values.first;
    final clotheColor =
        randomPiece(ClotheColor.values) ?? ClotheColor.values.first;
    final graphicType =
        randomPiece(GraphicType.values) ?? GraphicType.values.first;

    switch (clotheType) {
      case ClotheType.BlazerShirt:
        return blazerShirt;
      case ClotheType.BlazerSweater:
        return blazerSweater;
      case ClotheType.CollarSweater:
        return collarSweater(clotheColor);
      case ClotheType.GraphicShirt:
        return graphicShirt(clotheColor, graphicType);
      case ClotheType.Hoodie:
        return hoodie(clotheColor);
      case ClotheType.Overall:
        return overall(clotheColor);
      case ClotheType.ShirtCrewNeck:
        return shirtCrewNeck(clotheColor);
      case ClotheType.ShirtScoopNeck:
        return shirtScoopNeck(clotheColor);
      case ClotheType.ShirtVNeck:
        return shirtVNeck(clotheColor);
      default:
        return null;
    }
  }
}

class ClothesConverter extends Converter<Clothes> {
  @override
  Clothes? fromMap(Map<String, dynamic>? map) {
    if (map == null || map.isEmpty) return null;
    return Clothes._(
      clotheType: enumFromJson(ClotheType.values, map['clotheType']),
      clotheColor: enumFromJson(ClotheColor.values, map['clotheColor']),
      graphicType: enumFromJson(GraphicType.values, map['graphicType']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Clothes? value) {
    if (value == null) return null;

    return {
      'clotheType': enumToJson(value.clotheType),
      'clotheColor': enumToJson(value.clotheColor),
      'graphicType': enumToJson(value.graphicType),
    };
  }
}
