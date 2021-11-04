import 'package:avataaar_image_2/src/converter.dart';
import 'package:avataaar_image_2/src/parts/parts.dart';
import 'package:avataaar_image_2/src/pieces.dart';

class Style implements AvataaarPart {
  const Style._({this.avatarStyle});

  final AvatarStyle? avatarStyle;

  @override
  List get pieces => [avatarStyle];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Style &&
          runtimeType == other.runtimeType &&
          avatarStyle == other.avatarStyle;

  @override
  int get hashCode => avatarStyle.hashCode;

  static Style get circle => Style._(avatarStyle: AvatarStyle.Circle);

  static Style get transparent => Style._(avatarStyle: AvatarStyle.Transparent);

  static Style? get random {
    final avatarStyle = randomPiece(AvatarStyle.values);
    switch (avatarStyle) {
      case AvatarStyle.Circle:
        return circle;
      case AvatarStyle.Transparent:
        return transparent;
      default:
        return null;
    }
  }
}

class StyleConverter extends Converter<Style> {
  @override
  Style? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return Style._(
      avatarStyle: enumFromJson(AvatarStyle.values, map['avatarStyle']),
    );
  }

  @override
  Map<String, dynamic>? toMap(Style? value) {
    if (value == null) return null;
    return {'avatarStyle': enumToJson(value.avatarStyle)};
  }
}
