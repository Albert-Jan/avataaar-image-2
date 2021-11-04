import 'dart:math';

T? randomPiece<T>(List<T> pieces) {
  final index = Random().nextInt(pieces.length + 1) - 1;
  return index >= 0 ? pieces[index] : null;
}

enum AvatarStyle {
  Circle,
  Transparent,
}

enum TopType {
  NoHair,
  Eyepatch,
  Hat,
  Hijab,
  Turban,
  WinterHat1,
  WinterHat2,
  WinterHat3,
  WinterHat4,
  LongHairBigHair,
  LongHairBob,
  LongHairBun,
  LongHairCurly,
  LongHairCurvy,
  LongHairDreads,
  LongHairFrida,
  LongHairFro,
  LongHairFroBand,
  LongHairNotTooLong,
  LongHairShavedSides,
  LongHairMiaWallace,
  LongHairStraight,
  LongHairStraight2,
  LongHairStraightStrand,
  ShortHairDreads01,
  ShortHairDreads02,
  ShortHairFrizzle,
  ShortHairShaggyMullet,
  ShortHairShortCurly,
  ShortHairShortFlat,
  ShortHairShortRound,
  ShortHairShortWaved,
  ShortHairSides,
  ShortHairTheCaesar,
  ShortHairTheCaesarSidePart,
}

enum AccessoriesType {
  Blank,
  Kurt,
  Prescription01,
  Prescription02,
  Round,
  Sunglasses,
  Wayfarers,
}

enum HairColor {
  Auburn,
  Black,
  Blonde,
  BlondeGolden,
  Brown,
  BrownDark,
  PastelPink,
  Platinum,
  Red,
  SilverGray,
}

enum HatColor {
  Black,
  Blue01,
  Blue02,
  Blue03,
  Gray01,
  Gray02,
  Heather,
  PastelBlue,
  PastelGreen,
  PastelOrange,
  PastelRed,
  PastelYellow,
  Pink,
  Red,
  White,
}

enum FacialHairType {
  Blank,
  BeardMedium,
  BeardLight,
  BeardMagestic,
  MoustacheFancy,
  MoustacheMagnum,
}

enum FacialHairColor {
  Auburn,
  Black,
  Blonde,
  BlondeGolden,
  Brown,
  BrownDark,
  Platinum,
  Red,
}

enum ClotheType {
  BlazerShirt,
  BlazerSweater,
  CollarSweater,
  GraphicShirt,
  Hoodie,
  Overall,
  ShirtCrewNeck,
  ShirtScoopNeck,
  ShirtVNeck,
}

enum ClotheColor {
  Black,
  Blue01,
  Blue02,
  Blue03,
  Gray01,
  Gray02,
  Heather,
  PastelBlue,
  PastelGreen,
  PastelOrange,
  PastelRed,
  PastelYellow,
  Pink,
  Red,
  White,
}

enum GraphicType {
  Bat,
  Cumbia,
  Deer,
  Diamond,
  Hola,
  Pizza,
  Resist,
  Selena,
  Bear,
  SkullOutline,
  Skull,
}

enum EyeType {
  Close,
  Cry,
  Default,
  Dizzy,
  EyeRoll,
  Happy,
  Hearts,
  Side,
  Squint,
  Surprised,
  Wink,
  WinkWacky,
}

enum EyebrowType {
  Angry,
  AngryNatural,
  Default,
  DefaultNatural,
  FlatNatural,
  RaisedExcited,
  RaisedExcitedNatural,
  SadConcerned,
  SadConcernedNatural,
  UnibrowNatural,
  UpDown,
  UpDownNatural,
}

enum MouthType {
  Concerned,
  Default,
  Disbelief,
  Eating,
  Grimace,
  Sad,
  ScreamOpen,
  Serious,
  Smile,
  Tongue,
  Twinkle,
  Vomit,
}

enum SkinColor {
  Tanned,
  Yellow,
  Pale,
  Light,
  Brown,
  DarkBrown,
  Black,
}
