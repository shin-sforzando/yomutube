//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Thumbnail {
  /// Returns a new [Thumbnail] instance.
  Thumbnail({
    required this.url,
    this.width,
    this.height,
  });

  /// The URL of the thumbnail image.
  String url;

  /// The width of the thumbnail image in pixels.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  /// The height of the thumbnail image in pixels.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Thumbnail &&
    other.url == url &&
    other.width == width &&
    other.height == height;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode);

  @override
  String toString() => 'Thumbnail[url=$url, width=$width, height=$height]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    return json;
  }

  /// Returns a new [Thumbnail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Thumbnail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Thumbnail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Thumbnail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Thumbnail(
        url: mapValueOfType<String>(json, r'url')!,
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<Thumbnail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Thumbnail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Thumbnail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Thumbnail> mapFromJson(dynamic json) {
    final map = <String, Thumbnail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Thumbnail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Thumbnail-objects as value to a dart map
  static Map<String, List<Thumbnail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Thumbnail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Thumbnail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}
