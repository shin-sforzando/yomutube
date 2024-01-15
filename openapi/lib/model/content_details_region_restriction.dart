//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContentDetailsRegionRestriction {
  /// Returns a new [ContentDetailsRegionRestriction] instance.
  ContentDetailsRegionRestriction({
    this.allowed = const [],
    this.blocked = const [],
  });

  /// A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries.
  List<String> allowed;

  /// A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries.
  List<String> blocked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContentDetailsRegionRestriction &&
    _deepEquality.equals(other.allowed, allowed) &&
    _deepEquality.equals(other.blocked, blocked);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowed.hashCode) +
    (blocked.hashCode);

  @override
  String toString() => 'ContentDetailsRegionRestriction[allowed=$allowed, blocked=$blocked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowed'] = this.allowed;
      json[r'blocked'] = this.blocked;
    return json;
  }

  /// Returns a new [ContentDetailsRegionRestriction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContentDetailsRegionRestriction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContentDetailsRegionRestriction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContentDetailsRegionRestriction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContentDetailsRegionRestriction(
        allowed: json[r'allowed'] is Iterable
            ? (json[r'allowed'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        blocked: json[r'blocked'] is Iterable
            ? (json[r'blocked'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ContentDetailsRegionRestriction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContentDetailsRegionRestriction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContentDetailsRegionRestriction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContentDetailsRegionRestriction> mapFromJson(dynamic json) {
    final map = <String, ContentDetailsRegionRestriction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContentDetailsRegionRestriction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContentDetailsRegionRestriction-objects as value to a dart map
  static Map<String, List<ContentDetailsRegionRestriction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContentDetailsRegionRestriction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContentDetailsRegionRestriction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
