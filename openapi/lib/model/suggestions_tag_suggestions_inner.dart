//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SuggestionsTagSuggestionsInner {
  /// Returns a new [SuggestionsTagSuggestionsInner] instance.
  SuggestionsTagSuggestionsInner({
    this.tag,
    this.categoryRestricts = const [],
  });

  /// The keyword tag suggested for the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  /// A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword.
  List<String> categoryRestricts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuggestionsTagSuggestionsInner &&
    other.tag == tag &&
    _deepEquality.equals(other.categoryRestricts, categoryRestricts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tag == null ? 0 : tag!.hashCode) +
    (categoryRestricts.hashCode);

  @override
  String toString() => 'SuggestionsTagSuggestionsInner[tag=$tag, categoryRestricts=$categoryRestricts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
      json[r'categoryRestricts'] = this.categoryRestricts;
    return json;
  }

  /// Returns a new [SuggestionsTagSuggestionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuggestionsTagSuggestionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SuggestionsTagSuggestionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SuggestionsTagSuggestionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SuggestionsTagSuggestionsInner(
        tag: mapValueOfType<String>(json, r'tag'),
        categoryRestricts: json[r'categoryRestricts'] is Iterable
            ? (json[r'categoryRestricts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SuggestionsTagSuggestionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuggestionsTagSuggestionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuggestionsTagSuggestionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuggestionsTagSuggestionsInner> mapFromJson(dynamic json) {
    final map = <String, SuggestionsTagSuggestionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuggestionsTagSuggestionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuggestionsTagSuggestionsInner-objects as value to a dart map
  static Map<String, List<SuggestionsTagSuggestionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuggestionsTagSuggestionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuggestionsTagSuggestionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
