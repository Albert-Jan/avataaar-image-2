import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/facial_hair.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Top implements AvataaarPart {
  const Top._({
    this.topType,
    this.accessoriesType,
    this.hatColor,
    this.hairColor,
    this.facialHair,
  });

  final TopType? topType;
  final AccessoriesType? accessoriesType;
  final HatColor? hatColor;
  final HairColor? hairColor;
  final FacialHair? facialHair;

  @override
  List get pieces => [
        topType,
        accessoriesType,
        hatColor,
        hairColor,
      ]..addAll(facialHair?.pieces ?? []);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Top &&
          runtimeType == other.runtimeType &&
          topType == other.topType &&
          accessoriesType == other.accessoriesType &&
          hatColor == other.hatColor &&
          hairColor == other.hairColor &&
          facialHair == other.facialHair;

  @override
  int get hashCode =>
      topType.hashCode ^
      accessoriesType.hashCode ^
      hatColor.hashCode ^
      hairColor.hashCode ^
      facialHair.hashCode;

  static Top noHair(
          {AccessoriesType? accessoriesType, FacialHair? facialHair}) =>
      Top._(
          topType: TopType.NoHair,
          accessoriesType: accessoriesType,
          facialHair: facialHair);

  static Top eyepatch(
          {AccessoriesType? accessoriesType, FacialHair? facialHair}) =>
      Top._(
          topType: TopType.Eyepatch,
          accessoriesType: accessoriesType,
          facialHair: facialHair);

  static Top hat({AccessoriesType? accessoriesType, FacialHair? facialHair}) =>
      Top._(
          topType: TopType.Hat,
          accessoriesType: accessoriesType,
          facialHair: facialHair);

  static Top hijab({AccessoriesType? accessoriesType, HatColor? hatColor}) =>
      Top._(
          topType: TopType.Hijab,
          accessoriesType: accessoriesType,
          hatColor: hatColor);

  static Top turban(
          {AccessoriesType? accessoriesType,
          HatColor? hatColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.Turban,
          accessoriesType: accessoriesType,
          hatColor: hatColor,
          facialHair: facialHair);

  static Top winterHat1(
          {AccessoriesType? accessoriesType,
          HatColor? hatColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.WinterHat1,
          accessoriesType: accessoriesType,
          hatColor: hatColor,
          facialHair: facialHair);

  static Top winterHat2(
          {AccessoriesType? accessoriesType,
          HatColor? hatColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.WinterHat2,
          accessoriesType: accessoriesType,
          hatColor: hatColor,
          facialHair: facialHair);

  static Top winterHat3(
          {AccessoriesType? accessoriesType,
          HatColor? hatColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.WinterHat3,
          accessoriesType: accessoriesType,
          hatColor: hatColor,
          facialHair: facialHair);

  static Top winterHat4(
          {AccessoriesType? accessoriesType,
          HatColor? hatColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.WinterHat4,
          accessoriesType: accessoriesType,
          hatColor: hatColor,
          facialHair: facialHair);

  static Top longHairBigHair(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairBigHair,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairBob(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairBob,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairBun(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairBun,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairCurly(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairCurly,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairCurvy(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairCurvy,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairDreads(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairDreads,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairFrida(
          {AccessoriesType? accessoriesType, FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairFrida,
          accessoriesType: accessoriesType,
          facialHair: facialHair);

  static Top longHairFro(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairFro,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairFroBand(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairFroBand,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairNotTooLong(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairNotTooLong,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairShavedSides(
          {AccessoriesType? accessoriesType, FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairShavedSides,
          accessoriesType: accessoriesType,
          facialHair: facialHair);

  static Top longHairMiaWallace(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairMiaWallace,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairStraight(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairStraight,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairStraight2(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairStraight2,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top longHairStraightStrand(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.LongHairStraightStrand,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairDreads01(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairDreads01,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairDreads02(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairDreads02,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairFrizzle(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairFrizzle,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairShaggyMullet(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairShaggyMullet,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairShortCurly(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairShortCurly,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairShortFlat(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairShortFlat,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairShortRound(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairShortRound,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairShortWaved(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairShortWaved,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairSides(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairSides,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairTheCaesar(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairTheCaesar,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top shortHairTheCaesarSidePart(
          {AccessoriesType? accessoriesType,
          HairColor? hairColor,
          FacialHair? facialHair}) =>
      Top._(
          topType: TopType.ShortHairTheCaesarSidePart,
          accessoriesType: accessoriesType,
          hairColor: hairColor,
          facialHair: facialHair);

  static Top? get random {
    final topType = randomPiece(TopType.values);
    final accessoriesType = randomPiece(AccessoriesType.values);
    final hatColor = randomPiece(HatColor.values);
    final hairColor = randomPiece(HairColor.values);
    final facialHair = FacialHair.random;
    switch (topType) {
      case TopType.NoHair:
        return noHair(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.Eyepatch:
        return eyepatch(
            accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.Hat:
        return hat(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.Hijab:
        return hijab(accessoriesType: accessoriesType, hatColor: hatColor);
      case TopType.Turban:
        return turban(
            accessoriesType: accessoriesType,
            hatColor: hatColor,
            facialHair: facialHair);
      case TopType.WinterHat1:
        return winterHat1(
            accessoriesType: accessoriesType,
            hatColor: hatColor,
            facialHair: facialHair);
      case TopType.WinterHat2:
        return winterHat2(
            accessoriesType: accessoriesType,
            hatColor: hatColor,
            facialHair: facialHair);
      case TopType.WinterHat3:
        return winterHat3(
            accessoriesType: accessoriesType,
            hatColor: hatColor,
            facialHair: facialHair);
      case TopType.WinterHat4:
        return winterHat4(
            accessoriesType: accessoriesType,
            hatColor: hatColor,
            facialHair: facialHair);
      case TopType.LongHairBigHair:
        return longHairBigHair(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairBob:
        return longHairBob(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairBun:
        return longHairBun(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairCurly:
        return longHairCurly(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairCurvy:
        return longHairCurvy(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairDreads:
        return longHairDreads(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairFrida:
        return longHairFrida(
            accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.LongHairFro:
        return longHairFro(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairFroBand:
        return longHairFroBand(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairNotTooLong:
        return longHairNotTooLong(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairShavedSides:
        return longHairShavedSides(
            accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.LongHairMiaWallace:
        return longHairMiaWallace(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairStraight:
        return longHairStraight(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairStraight2:
        return longHairStraight2(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.LongHairStraightStrand:
        return longHairStraightStrand(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairDreads01:
        return shortHairDreads01(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairDreads02:
        return shortHairDreads02(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairFrizzle:
        return shortHairFrizzle(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairShaggyMullet:
        return shortHairShaggyMullet(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairShortCurly:
        return shortHairShortCurly(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairShortFlat:
        return shortHairShortFlat(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairShortRound:
        return shortHairShortRound(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairShortWaved:
        return shortHairShortWaved(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairSides:
        return shortHairSides(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairTheCaesar:
        return shortHairTheCaesar(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      case TopType.ShortHairTheCaesarSidePart:
        return shortHairTheCaesarSidePart(
            accessoriesType: accessoriesType,
            hairColor: hairColor,
            facialHair: facialHair);
      default:
        return null;
    }
  }
}

class TopConverter extends Converter<Top> {
  @override
  Top? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return Top._(
      topType: enumFromJson(TopType.values, map['topType']),
      accessoriesType:
          enumFromJson(AccessoriesType.values, map['accessoriesType']),
      hatColor: enumFromJson(HatColor.values, map['hatColor']),
      hairColor: enumFromJson(HairColor.values, map['hairColor']),
      facialHair: FacialHairConverter().fromMap(map['facialHair']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Top? value) {
    if (value == null) return null;
    return {
      'topType': enumToJson(value.topType),
      'accessoriesType': enumToJson(value.accessoriesType),
      'hatColor': enumToJson(value.hatColor),
      'hairColor': enumToJson(value.hairColor),
      'facialHair': FacialHairConverter().toMap(value.facialHair),
    };
  }
}
