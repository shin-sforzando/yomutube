//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Statistics {
  /// Returns a new [Statistics] instance.
  Statistics({
    this.viewCount,
    this.likeCount,
    this.dislikeCount,
    this.favoriteCount,
    this.commentCount,
  });

  /// The view count of the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? viewCount;

  /// The like count of the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likeCount;

  /// The dislike count of the video. The `statistics.dislikeCount` property was made private as of December 13, 2021. This means that the property is included in an API response only if the API request was authenticated by the video owner. See the [revision history](https://developers.google.com/youtube/v3/revision_history#release_notes_12_15_2021) for more information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dislikeCount;

  /// The favorite count of the video. This property has been deprecated. The deprecation is effective as of August 28, 2015. The property's value is now always set to `0`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? favoriteCount;

  /// The comment count of the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? commentCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Statistics &&
    other.viewCount == viewCount &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.favoriteCount == favoriteCount &&
    other.commentCount == commentCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (viewCount == null ? 0 : viewCount!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (commentCount == null ? 0 : commentCount!.hashCode);

  @override
  String toString() => 'Statistics[viewCount=$viewCount, likeCount=$likeCount, dislikeCount=$dislikeCount, favoriteCount=$favoriteCount, commentCount=$commentCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.viewCount != null) {
      json[r'viewCount'] = this.viewCount;
    } else {
      json[r'viewCount'] = null;
    }
    if (this.likeCount != null) {
      json[r'likeCount'] = this.likeCount;
    } else {
      json[r'likeCount'] = null;
    }
    if (this.dislikeCount != null) {
      json[r'dislikeCount'] = this.dislikeCount;
    } else {
      json[r'dislikeCount'] = null;
    }
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
    }
    if (this.commentCount != null) {
      json[r'commentCount'] = this.commentCount;
    } else {
      json[r'commentCount'] = null;
    }
    return json;
  }

  /// Returns a new [Statistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Statistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Statistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Statistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Statistics(
        viewCount: mapValueOfType<int>(json, r'viewCount'),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        commentCount: mapValueOfType<int>(json, r'commentCount'),
      );
    }
    return null;
  }

  static List<Statistics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Statistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Statistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Statistics> mapFromJson(dynamic json) {
    final map = <String, Statistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Statistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Statistics-objects as value to a dart map
  static Map<String, List<Statistics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Statistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Statistics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
