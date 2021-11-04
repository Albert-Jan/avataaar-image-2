import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Eyebrow implements AvataaarPart {
  const Eyebrow._({this.eyebrowType});

  final EyebrowType? eyebrowType;

  @override
  List get pieces => [eyebrowType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Eyebrow &&
          runtimeType == other.runtimeType &&
          eyebrowType == other.eyebrowType;

  @override
  int get hashCode => eyebrowType.hashCode;

  static Eyebrow get angry => Eyebrow._(eyebrowType: EyebrowType.Angry);

  static Eyebrow get angryNatural =>
      Eyebrow._(eyebrowType: EyebrowType.AngryNatural);

  static Eyebrow get defaultEyebrow =>
      Eyebrow._(eyebrowType: EyebrowType.Default);

  static Eyebrow get defaultNatural =>
      Eyebrow._(eyebrowType: EyebrowType.DefaultNatural);

  static Eyebrow get flatNatural =>
      Eyebrow._(eyebrowType: EyebrowType.FlatNatural);

  static Eyebrow get raisedExcited =>
      Eyebrow._(eyebrowType: EyebrowType.RaisedExcited);

  static Eyebrow get raisedExcitedNatural =>
      Eyebrow._(eyebrowType: EyebrowType.RaisedExcitedNatural);

  static Eyebrow get sadConcerned =>
      Eyebrow._(eyebrowType: EyebrowType.SadConcerned);

  static Eyebrow get sadConcernedNatural =>
      Eyebrow._(eyebrowType: EyebrowType.SadConcernedNatural);

  static Eyebrow get unibrowNatural =>
      Eyebrow._(eyebrowType: EyebrowType.UnibrowNatural);

  static Eyebrow get upDown => Eyebrow._(eyebrowType: EyebrowType.UpDown);

  static Eyebrow get upDownNatural =>
      Eyebrow._(eyebrowType: EyebrowType.UpDownNatural);

  static Eyebrow get random =>
      Eyebrow._(eyebrowType: randomPiece(EyebrowType.values));
}

class EyebrowConverter extends Converter<Eyebrow> {
  @override
  Eyebrow? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return Eyebrow._(
      eyebrowType: enumFromJson(EyebrowType.values, map['eyebrowType']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Eyebrow? value) {
    if (value == null) return null;
    return {'eyebrowType': enumToJson(value.eyebrowType)};
  }
}
