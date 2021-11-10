import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Mouth implements AvataaarPart {
  const Mouth._({this.mouthType});

  final MouthType? mouthType;

  @override
  List get pieces => [mouthType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mouth &&
          runtimeType == other.runtimeType &&
          mouthType == other.mouthType;

  @override
  int get hashCode => mouthType.hashCode;

  static Mouth get concerned => Mouth._(mouthType: MouthType.Concerned);

  static Mouth get defaultMouth => Mouth._(mouthType: MouthType.Default);

  static Mouth get disbelief => Mouth._(mouthType: MouthType.Disbelief);

  static Mouth get eating => Mouth._(mouthType: MouthType.Eating);

  static Mouth get grimace => Mouth._(mouthType: MouthType.Grimace);

  static Mouth get sad => Mouth._(mouthType: MouthType.Sad);

  static Mouth get screamOpen => Mouth._(mouthType: MouthType.ScreamOpen);

  static Mouth get serious => Mouth._(mouthType: MouthType.Serious);

  static Mouth get smile => Mouth._(mouthType: MouthType.Smile);

  static Mouth get tongue => Mouth._(mouthType: MouthType.Tongue);

  static Mouth get twinkle => Mouth._(mouthType: MouthType.Twinkle);

  static Mouth get vomit => Mouth._(mouthType: MouthType.Vomit);

  static Mouth get random => Mouth._(mouthType: randomPiece(MouthType.values));
}

class MouthConverter extends Converter<Mouth> {
  @override
  Mouth? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return Mouth._(
      mouthType: enumFromJson(MouthType.values, map['mouthType']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Mouth? value) {
    if (value == null) return null;
    return {'mouthType': enumToJson(value.mouthType)};
  }
}
