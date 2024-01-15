//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VideoCategorySnippet {
  /// Returns a new [VideoCategorySnippet] instance.
  VideoCategorySnippet({
    required this.channelId,
    required this.title,
    this.assignable,
  });

  /// The YouTube channel that created the video category.
  String channelId;

  /// The video category's title.
  String title;

  /// Indicates whether videos can be associated with the category. If you set this value to `false`, then YouTube does not display the category in video metadata that it returns for searches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? assignable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VideoCategorySnippet &&
    other.channelId == channelId &&
    other.title == title &&
    other.assignable == assignable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelId.hashCode) +
    (title.hashCode) +
    (assignable == null ? 0 : assignable!.hashCode);

  @override
  String toString() => 'VideoCategorySnippet[channelId=$channelId, title=$title, assignable=$assignable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channelId'] = this.channelId;
      json[r'title'] = this.title;
    if (this.assignable != null) {
      json[r'assignable'] = this.assignable;
    } else {
      json[r'assignable'] = null;
    }
    return json;
  }

  /// Returns a new [VideoCategorySnippet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VideoCategorySnippet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VideoCategorySnippet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VideoCategorySnippet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VideoCategorySnippet(
        channelId: mapValueOfType<String>(json, r'channelId')!,
        title: mapValueOfType<String>(json, r'title')!,
        assignable: mapValueOfType<bool>(json, r'assignable'),
      );
    }
    return null;
  }

  static List<VideoCategorySnippet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VideoCategorySnippet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VideoCategorySnippet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VideoCategorySnippet> mapFromJson(dynamic json) {
    final map = <String, VideoCategorySnippet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VideoCategorySnippet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VideoCategorySnippet-objects as value to a dart map
  static Map<String, List<VideoCategorySnippet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VideoCategorySnippet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VideoCategorySnippet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channelId',
    'title',
  };
}
