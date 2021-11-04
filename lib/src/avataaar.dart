import 'dart:convert' show json;

import 'package:avataaar_image_2/src/converter.dart';

import '../avataaar_image_2.dart';
import 'parts/parts.dart';

class Avataaar implements AvataaarPart {
  const Avataaar({
    this.baseUrl,
    this.top,
    this.clothes,
    this.eyes,
    this.eyebrow,
    this.mouth,
    this.skin,
    this.style,
  });

  Avataaar.random({
    String? baseUrl,
    Top? top,
    Clothes? clothes,
    Eyes? eyes,
    Eyebrow? eyebrow,
    Mouth? mouth,
    Skin? skin,
    Style? style,
  }) : this(
          baseUrl: '',
          top: top ?? Top.random,
          clothes: clothes ?? Clothes.random,
          eyes: eyes ?? Eyes.random,
          eyebrow: eyebrow ?? Eyebrow.random,
          mouth: mouth ?? Mouth.random,
          skin: skin ?? Skin.random,
          style: style ?? Style.random,
        );

  final String? baseUrl;
  final Top? top;
  final Clothes? clothes;
  final Eyes? eyes;
  final Eyebrow? eyebrow;
  final Mouth? mouth;
  final Skin? skin;
  final Style? style;

  Iterable<MapEntry<String, String>> get pieceEntries => pieces
      .expand((it) => it?.pieces ?? [])
      .where((it) => it != null)
      .map(_splitEnum);

  @override
  List<AvataaarPart?> get pieces =>
      [top, clothes, eyes, eyebrow, mouth, skin, style];

  MapEntry<String, String> _splitEnum<T>(T enumValue) {
    final split = enumValue.toString().split('\.');
    return MapEntry(split[0], split[1]);
  }

  String toJson() => json.encode(AvataaarConverter().toMap(this));

  String toUrl({double width = 800}) =>
      AvataaarsApi().getUrl(this.baseUrl ?? '', this, width);

  static Avataaar fromJson(String value) =>
      AvataaarConverter().fromMap(json.decode(value));

  Avataaar copyWith({
    Top? top,
    Clothes? clothes,
    Eyes? eyes,
    Eyebrow? eyebrow,
    Mouth? mouth,
    Skin? skin,
    Style? style,
  }) =>
      Avataaar(
        top: top ?? this.top,
        clothes: clothes ?? this.clothes,
        eyes: eyes ?? this.eyes,
        eyebrow: eyebrow ?? this.eyebrow,
        mouth: mouth ?? this.mouth,
        skin: skin ?? this.skin,
        style: style ?? this.style,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Avataaar &&
          runtimeType == other.runtimeType &&
          top == other.top &&
          clothes == other.clothes &&
          eyes == other.eyes &&
          eyebrow == other.eyebrow &&
          mouth == other.mouth &&
          skin == other.skin &&
          style == other.style;

  @override
  int get hashCode =>
      top.hashCode ^
      clothes.hashCode ^
      eyes.hashCode ^
      eyebrow.hashCode ^
      mouth.hashCode ^
      skin.hashCode ^
      style.hashCode;
}

class AvataaarConverter extends Converter<Avataaar> {
  @override
  Avataaar fromMap(Map<String, dynamic> map) => Avataaar(
        top: TopConverter().fromMap(map['top']),
        clothes: ClothesConverter().fromMap(map['clothes']),
        eyebrow: EyebrowConverter().fromMap(map['eyebrow']),
        eyes: EyesConverter().fromMap(map['eyes']),
        mouth: MouthConverter().fromMap(map['mouth']),
        skin: SkinConverter().fromMap(map['skin']),
        style: StyleConverter().fromMap(map['style']),
      );

  @override
  Map<String, dynamic> toMap(Avataaar value) => {
        'top': TopConverter().toMap(value.top),
        'clothes': ClothesConverter().toMap(value.clothes),
        'eyebrow': EyebrowConverter().toMap(value.eyebrow),
        'eyes': EyesConverter().toMap(value.eyes),
        'mouth': MouthConverter().toMap(value.mouth),
        'skin': SkinConverter().toMap(value.skin),
        'style': StyleConverter().toMap(value.style),
      };
}
