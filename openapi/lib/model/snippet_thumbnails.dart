//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SnippetThumbnails {
  /// Returns a new [SnippetThumbnails] instance.
  SnippetThumbnails({
    this.default_,
    this.medium,
    this.high,
    this.standard,
    this.maxres,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? default_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? medium;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? high;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? standard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? maxres;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SnippetThumbnails &&
    other.default_ == default_ &&
    other.medium == medium &&
    other.high == high &&
    other.standard == standard &&
    other.maxres == maxres;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_ == null ? 0 : default_!.hashCode) +
    (medium == null ? 0 : medium!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (standard == null ? 0 : standard!.hashCode) +
    (maxres == null ? 0 : maxres!.hashCode);

  @override
  String toString() => 'SnippetThumbnails[default_=$default_, medium=$medium, high=$high, standard=$standard, maxres=$maxres]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.medium != null) {
      json[r'medium'] = this.medium;
    } else {
      json[r'medium'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.standard != null) {
      json[r'standard'] = this.standard;
    } else {
      json[r'standard'] = null;
    }
    if (this.maxres != null) {
      json[r'maxres'] = this.maxres;
    } else {
      json[r'maxres'] = null;
    }
    return json;
  }

  /// Returns a new [SnippetThumbnails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SnippetThumbnails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SnippetThumbnails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SnippetThumbnails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SnippetThumbnails(
        default_: Thumbnail.fromJson(json[r'default']),
        medium: Thumbnail.fromJson(json[r'medium']),
        high: Thumbnail.fromJson(json[r'high']),
        standard: Thumbnail.fromJson(json[r'standard']),
        maxres: Thumbnail.fromJson(json[r'maxres']),
      );
    }
    return null;
  }

  static List<SnippetThumbnails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SnippetThumbnails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SnippetThumbnails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SnippetThumbnails> mapFromJson(dynamic json) {
    final map = <String, SnippetThumbnails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SnippetThumbnails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SnippetThumbnails-objects as value to a dart map
  static Map<String, List<SnippetThumbnails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SnippetThumbnails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SnippetThumbnails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
