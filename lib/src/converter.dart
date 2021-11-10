import 'package:collection/collection.dart';

abstract class Converter<T> {
  Map<String, dynamic>? toMap(T value);
  T? fromMap(Map<String, dynamic> map);

  T? enumFromJson<T>(List<T?> values, String? json) => json != null
      ? values.firstWhereOrNull(
          (it) => enumToJson(it)?.toLowerCase() == json.toLowerCase(),
        )
      : null;

  String? enumToJson<T>(T value) =>
      value != null ? value.toString().split('.')[1] : null;
}
