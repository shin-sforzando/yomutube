//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VideoList {
  /// Returns a new [VideoList] instance.
  VideoList({
    required this.kind,
    required this.etag,
    this.nextPageToken,
    this.prevPageToken,
    this.pageInfo,
    this.items = const [],
  });

  /// Identifies the API resource's type. The value will be `youtube#videoListResponse`.
  String kind;

  /// The Etag of this resource.
  String etag;

  /// The token that can be used as the value of the `pageToken` parameter to retrieve the next page in the result set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPageToken;

  /// The token that can be used as the value of the `pageToken` parameter to retrieve the previous page in the result set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevPageToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PageInfo? pageInfo;

  /// A list of videos that match the request criteria.
  List<Video> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VideoList &&
    other.kind == kind &&
    other.etag == etag &&
    other.nextPageToken == nextPageToken &&
    other.prevPageToken == prevPageToken &&
    other.pageInfo == pageInfo &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (etag.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken!.hashCode) +
    (prevPageToken == null ? 0 : prevPageToken!.hashCode) +
    (pageInfo == null ? 0 : pageInfo!.hashCode) +
    (items.hashCode);

  @override
  String toString() => 'VideoList[kind=$kind, etag=$etag, nextPageToken=$nextPageToken, prevPageToken=$prevPageToken, pageInfo=$pageInfo, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'etag'] = this.etag;
    if (this.nextPageToken != null) {
      json[r'nextPageToken'] = this.nextPageToken;
    } else {
      json[r'nextPageToken'] = null;
    }
    if (this.prevPageToken != null) {
      json[r'prevPageToken'] = this.prevPageToken;
    } else {
      json[r'prevPageToken'] = null;
    }
    if (this.pageInfo != null) {
      json[r'pageInfo'] = this.pageInfo;
    } else {
      json[r'pageInfo'] = null;
    }
      json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [VideoList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VideoList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VideoList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VideoList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VideoList(
        kind: mapValueOfType<String>(json, r'kind')!,
        etag: mapValueOfType<String>(json, r'etag')!,
        nextPageToken: mapValueOfType<String>(json, r'nextPageToken'),
        prevPageToken: mapValueOfType<String>(json, r'prevPageToken'),
        pageInfo: PageInfo.fromJson(json[r'pageInfo']),
        items: Video.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<VideoList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VideoList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VideoList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VideoList> mapFromJson(dynamic json) {
    final map = <String, VideoList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VideoList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VideoList-objects as value to a dart map
  static Map<String, List<VideoList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VideoList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VideoList.listFromJson(entry.value, growable: growable,);
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
