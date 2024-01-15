//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Caption {
  /// Returns a new [Caption] instance.
  Caption({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
  });

  /// Identifies the API resource's type. The value will be `youtube#caption`.
  String kind;

  /// The Etag of this resource.
  String etag;

  /// The ID that YouTube uses to uniquely identify the caption track.
  String id;

  CaptionSnippet snippet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Caption &&
    other.kind == kind &&
    other.etag == etag &&
    other.id == id &&
    other.snippet == snippet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (etag.hashCode) +
    (id.hashCode) +
    (snippet.hashCode);

  @override
  String toString() => 'Caption[kind=$kind, etag=$etag, id=$id, snippet=$snippet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'etag'] = this.etag;
      json[r'id'] = this.id;
      json[r'snippet'] = this.snippet;
    return json;
  }

  /// Returns a new [Caption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Caption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Caption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Caption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Caption(
        kind: mapValueOfType<String>(json, r'kind')!,
        etag: mapValueOfType<String>(json, r'etag')!,
        id: mapValueOfType<String>(json, r'id')!,
        snippet: CaptionSnippet.fromJson(json[r'snippet'])!,
      );
    }
    return null;
  }

  static List<Caption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Caption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Caption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Caption> mapFromJson(dynamic json) {
    final map = <String, Caption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Caption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Caption-objects as value to a dart map
  static Map<String, List<Caption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Caption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Caption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'etag',
    'id',
    'snippet',
  };
}
