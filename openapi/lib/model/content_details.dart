//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContentDetails {
  /// Returns a new [ContentDetails] instance.
  ContentDetails({
    this.duration,
    this.dimension,
    this.definition,
    this.caption,
    this.licensedContent,
    this.regionRestriction,
    this.contentRating,
    this.projection,
    this.hasCustomThumbnail,
  });

  /// The length of the video. The property value is an ISO 8601 duration. For example, for a video that is at least one minute long and less than one hour long, the duration is in the format `PT#M#S`, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of `PT15M33S` indicates that the video is 15 minutes and 33 seconds long. If the video is at least one hour long, the duration is in the format PT#H#M#S, in which the # preceding the letter H specifies the length of the video in hours and all of the other details are the same as described above. If the video is at least one day long, the letters P and T are separated, and the value's format is P#DT#H#M#S. Please refer to the ISO 8601 specification for complete details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  /// Indicates whether the video is available in 3D or in 2D.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dimension;

  /// Indicates whether the video is available in high definition (HD) or only in standard definition. Valid values for this property are: - `hd` - `sd`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? definition;

  /// Indicates whether captions are available for the video. Valid values for this property are: - `false` - `true`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caption;

  /// Indicates whether the video represents licensed content, which means that the content was uploaded to a channel linked to a YouTube content partner and then claimed by that partner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? licensedContent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContentDetailsRegionRestriction? regionRestriction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContentRating? contentRating;

  /// Specifies the projection format of the video. Valid values for this property are: - `360` - `rectangular`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projection;

  /// Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasCustomThumbnail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContentDetails &&
    other.duration == duration &&
    other.dimension == dimension &&
    other.definition == definition &&
    other.caption == caption &&
    other.licensedContent == licensedContent &&
    other.regionRestriction == regionRestriction &&
    other.contentRating == contentRating &&
    other.projection == projection &&
    other.hasCustomThumbnail == hasCustomThumbnail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration == null ? 0 : duration!.hashCode) +
    (dimension == null ? 0 : dimension!.hashCode) +
    (definition == null ? 0 : definition!.hashCode) +
    (caption == null ? 0 : caption!.hashCode) +
    (licensedContent == null ? 0 : licensedContent!.hashCode) +
    (regionRestriction == null ? 0 : regionRestriction!.hashCode) +
    (contentRating == null ? 0 : contentRating!.hashCode) +
    (projection == null ? 0 : projection!.hashCode) +
    (hasCustomThumbnail == null ? 0 : hasCustomThumbnail!.hashCode);

  @override
  String toString() => 'ContentDetails[duration=$duration, dimension=$dimension, definition=$definition, caption=$caption, licensedContent=$licensedContent, regionRestriction=$regionRestriction, contentRating=$contentRating, projection=$projection, hasCustomThumbnail=$hasCustomThumbnail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.dimension != null) {
      json[r'dimension'] = this.dimension;
    } else {
      json[r'dimension'] = null;
    }
    if (this.definition != null) {
      json[r'definition'] = this.definition;
    } else {
      json[r'definition'] = null;
    }
    if (this.caption != null) {
      json[r'caption'] = this.caption;
    } else {
      json[r'caption'] = null;
    }
    if (this.licensedContent != null) {
      json[r'licensedContent'] = this.licensedContent;
    } else {
      json[r'licensedContent'] = null;
    }
    if (this.regionRestriction != null) {
      json[r'regionRestriction'] = this.regionRestriction;
    } else {
      json[r'regionRestriction'] = null;
    }
    if (this.contentRating != null) {
      json[r'contentRating'] = this.contentRating;
    } else {
      json[r'contentRating'] = null;
    }
    if (this.projection != null) {
      json[r'projection'] = this.projection;
    } else {
      json[r'projection'] = null;
    }
    if (this.hasCustomThumbnail != null) {
      json[r'hasCustomThumbnail'] = this.hasCustomThumbnail;
    } else {
      json[r'hasCustomThumbnail'] = null;
    }
    return json;
  }

  /// Returns a new [ContentDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContentDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContentDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContentDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContentDetails(
        duration: mapValueOfType<String>(json, r'duration'),
        dimension: mapValueOfType<String>(json, r'dimension'),
        definition: mapValueOfType<String>(json, r'definition'),
        caption: mapValueOfType<String>(json, r'caption'),
        licensedContent: mapValueOfType<bool>(json, r'licensedContent'),
        regionRestriction: ContentDetailsRegionRestriction.fromJson(json[r'regionRestriction']),
        contentRating: ContentRating.fromJson(json[r'contentRating']),
        projection: mapValueOfType<String>(json, r'projection'),
        hasCustomThumbnail: mapValueOfType<bool>(json, r'hasCustomThumbnail'),
      );
    }
    return null;
  }

  static List<ContentDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContentDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContentDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContentDetails> mapFromJson(dynamic json) {
    final map = <String, ContentDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContentDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContentDetails-objects as value to a dart map
  static Map<String, List<ContentDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContentDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContentDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
