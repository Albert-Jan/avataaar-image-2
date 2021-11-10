import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Skin implements AvataaarPart {
  const Skin._({this.skinColor});

  final SkinColor? skinColor;

  @override
  List get pieces => [skinColor];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Skin &&
          runtimeType == other.runtimeType &&
          skinColor == other.skinColor;

  @override
  int get hashCode => skinColor.hashCode;

  static Skin get tanned => Skin._(skinColor: SkinColor.Tanned);

  static Skin get yellow => Skin._(skinColor: SkinColor.Yellow);

  static Skin get pale => Skin._(skinColor: SkinColor.Pale);

  static Skin get light => Skin._(skinColor: SkinColor.Light);

  static Skin get brown => Skin._(skinColor: SkinColor.Brown);

  static Skin get darkBrown => Skin._(skinColor: SkinColor.DarkBrown);

  static Skin get black => Skin._(skinColor: SkinColor.Black);

  static Skin get random => Skin._(skinColor: randomPiece(SkinColor.values));
}

class SkinConverter extends Converter<Skin> {
  @override
  Skin? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return Skin._(
      skinColor: enumFromJson(SkinColor.values, map['skinColor']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Skin? value) {
    if (value == null) return null;
    return {'skinColor': enumToJson(value.skinColor)};
  }
}
