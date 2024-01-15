//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Snippet {
  /// Returns a new [Snippet] instance.
  Snippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    this.tags = const [],
    this.categoryId,
    this.liveBroadcastContent,
    this.defaultLanguage,
    this.localized,
    this.defaultAudioLanguage,
  });

  /// The date and time that the video was published. Note that this time might be different than the time that the video was uploaded. For example, if a video is uploaded as a private video and then made public at a later time, this property will specify the time that the video was made public. There are a couple of special cases: - If a video is uploaded as a private video and the video metadata is retrieved by the channel owner, then the property value specifies the date and time that the video was uploaded. - If a video is uploaded as an unlisted video, the property value also specifies the date and time that the video was uploaded. In this case, anyone who knows the video's unique video ID can retrieve the video metadata. The value is specified in ISO 8601 format.
  DateTime publishedAt;

  /// The ID that YouTube uses to uniquely identify the channel that the video was uploaded to.
  String channelId;

  /// The video's title. The property value has a maximum length of 100 characters and may contain all valid UTF-8 characters except < and >. You must set a value for this property if you call the videos.update method and are updating the snippet part of a video resource.
  String title;

  /// The video's description. The property value has a maximum length of 5000 bytes and may contain all valid UTF-8 characters except < and >.
  String description;

  SnippetThumbnails thumbnails;

  /// The title of the channel that the video belongs to.
  String channelTitle;

  /// A list of keyword tags associated with the video. Tags may contain spaces. The property value has a maximum length of 500 characters. Note the following rules regarding the way the character limit is calculated: - The property value is a list, and commas between items in the list count toward the limit. - If a tag contains a space, the API server handles the tag value as though it were wrapped in quotation marks, and the quotation marks count toward the character limit.
  List<String> tags;

  /// The YouTube video category associated with the video. You must set a value for this property if you call the `videos.update` method and are updating the snippet part of a video resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryId;

  /// Indicates if the video is an upcoming/active live broadcast. Or it's \"none\" if the video is not an upcoming/active live broadcast. Valid values for this property are: - `live` - `none` - `upcoming`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveBroadcastContent;

  /// The language of the text in the video resource's `snippet.title` and `snippet.description` properties.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultLanguage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Localized? localized;

  /// The `default_audio_language` property specifies the language spoken in the video's default audio track.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultAudioLanguage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Snippet &&
    other.publishedAt == publishedAt &&
    other.channelId == channelId &&
    other.title == title &&
    other.description == description &&
    other.thumbnails == thumbnails &&
    other.channelTitle == channelTitle &&
    _deepEquality.equals(other.tags, tags) &&
    other.categoryId == categoryId &&
    other.liveBroadcastContent == liveBroadcastContent &&
    other.defaultLanguage == defaultLanguage &&
    other.localized == localized &&
    other.defaultAudioLanguage == defaultAudioLanguage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publishedAt.hashCode) +
    (channelId.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (thumbnails.hashCode) +
    (channelTitle.hashCode) +
    (tags.hashCode) +
    (categoryId == null ? 0 : categoryId!.hashCode) +
    (liveBroadcastContent == null ? 0 : liveBroadcastContent!.hashCode) +
    (defaultLanguage == null ? 0 : defaultLanguage!.hashCode) +
    (localized == null ? 0 : localized!.hashCode) +
    (defaultAudioLanguage == null ? 0 : defaultAudioLanguage!.hashCode);

  @override
  String toString() => 'Snippet[publishedAt=$publishedAt, channelId=$channelId, title=$title, description=$description, thumbnails=$thumbnails, channelTitle=$channelTitle, tags=$tags, categoryId=$categoryId, liveBroadcastContent=$liveBroadcastContent, defaultLanguage=$defaultLanguage, localized=$localized, defaultAudioLanguage=$defaultAudioLanguage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'publishedAt'] = this.publishedAt.toUtc().toIso8601String();
      json[r'channelId'] = this.channelId;
      json[r'title'] = this.title;
      json[r'description'] = this.description;
      json[r'thumbnails'] = this.thumbnails;
      json[r'channelTitle'] = this.channelTitle;
      json[r'tags'] = this.tags;
    if (this.categoryId != null) {
      json[r'categoryId'] = this.categoryId;
    } else {
      json[r'categoryId'] = null;
    }
    if (this.liveBroadcastContent != null) {
      json[r'liveBroadcastContent'] = this.liveBroadcastContent;
    } else {
      json[r'liveBroadcastContent'] = null;
    }
    if (this.defaultLanguage != null) {
      json[r'defaultLanguage'] = this.defaultLanguage;
    } else {
      json[r'defaultLanguage'] = null;
    }
    if (this.localized != null) {
      json[r'localized'] = this.localized;
    } else {
      json[r'localized'] = null;
    }
    if (this.defaultAudioLanguage != null) {
      json[r'defaultAudioLanguage'] = this.defaultAudioLanguage;
    } else {
      json[r'defaultAudioLanguage'] = null;
    }
    return json;
  }

  /// Returns a new [Snippet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Snippet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Snippet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Snippet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Snippet(
        publishedAt: mapDateTime(json, r'publishedAt', r'')!,
        channelId: mapValueOfType<String>(json, r'channelId')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description')!,
        thumbnails: SnippetThumbnails.fromJson(json[r'thumbnails'])!,
        channelTitle: mapValueOfType<String>(json, r'channelTitle')!,
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        categoryId: mapValueOfType<String>(json, r'categoryId'),
        liveBroadcastContent: mapValueOfType<String>(json, r'liveBroadcastContent'),
        defaultLanguage: mapValueOfType<String>(json, r'defaultLanguage'),
        localized: Localized.fromJson(json[r'localized']),
        defaultAudioLanguage: mapValueOfType<String>(json, r'defaultAudioLanguage'),
      );
    }
    return null;
  }

  static List<Snippet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Snippet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Snippet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Snippet> mapFromJson(dynamic json) {
    final map = <String, Snippet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Snippet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Snippet-objects as value to a dart map
  static Map<String, List<Snippet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Snippet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Snippet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'publishedAt',
    'channelId',
    'title',
    'description',
    'thumbnails',
    'channelTitle',
  };
}
