//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CaptionList {
  /// Returns a new [CaptionList] instance.
  CaptionList({
    required this.kind,
    required this.etag,
    this.items = const [],
  });

  /// Identifies the API resource's type. The value will be `youtube#captionListResponse`.
  String kind;

  /// The Etag of this resource.
  String etag;

  /// A list of captions that match the request criteria.
  List<Caption> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptionList &&
    other.kind == kind &&
    other.etag == etag &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (etag.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'CaptionList[kind=$kind, etag=$etag, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'etag'] = this.etag;
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [CaptionList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptionList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptionList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptionList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptionList(
        kind: mapValueOfType<String>(json, r'kind')!,
        etag: mapValueOfType<String>(json, r'etag')!,
        items: Caption.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<CaptionList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptionList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptionList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptionList> mapFromJson(dynamic json) {
    final map = <String, CaptionList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptionList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptionList-objects as value to a dart map
  static Map<String, List<CaptionList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptionList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptionList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'etag',
    'items',
  };
}
