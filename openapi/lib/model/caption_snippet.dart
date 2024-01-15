//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CaptionSnippet {
  /// Returns a new [CaptionSnippet] instance.
  CaptionSnippet({
    required this.videoId,
    this.lastUpdated,
    this.trackKind,
    this.language,
    this.name,
    this.audioTrackType,
    this.isCC,
    this.isLarge,
    this.isEasyReader,
    this.isDraft,
    this.isAutoSynced,
    this.status,
    this.failureReason,
  });

  /// The ID that YouTube uses to uniquely identify the video associated with the caption track.
  String videoId;

  /// The date and time when the caption track was last updated. The value is specified in ISO 8601 format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUpdated;

  /// The caption track's type. Valid values for this property are   - `standard` - A regular caption track. This is the default value.   - `asr` - A caption track generated using automatic speech recognition.   - `forced` - A caption track that plays when no other track is selected in the player. For example, a video that shows aliens speaking in an alien language might have a forced caption track to only show subtitles for the alien language.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackKind;

  /// The language of the caption track. The property value is a BCP-47 language tag.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// The name of the caption track. The name is intended to be visible to the user as an option during playback.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The type of audio track associated with the caption track. Valid values for this property are - `unknown` - This is the default value. - `commentary` - The caption track corresponds to an alternate audio track that includes commentary, such as directory commentary. - `descriptive` - The caption track corresponds to an alternate audio track that includes additional descriptive audio. - `primary` - The caption track corresponds to the primary audio track for the video, which is the audio track normally associated with the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audioTrackType;

  /// Indicates whether the track contains closed captions for the deaf and hard of hearing. The default value is `false`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCC;

  /// Indicates whether the caption track uses large text for the vision-impaired. The default value is `false`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLarge;

  /// Indicates whether caption track is formatted for \"easy reader,\" meaning it is at a third-grade level for language learners. The default value is `false`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEasyReader;

  /// Indicates whether the caption track is a draft. If the value is `true`, then the track is not publicly visible. The default value is `false`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDraft;

  /// Indicates whether YouTube synchronized the caption track to the audio track in the video. The value will be `true` if a sync was explicitly requested when the caption track was uploaded. For example, when calling the `captions.insert` or `captions.update` methods, you can set the sync parameter to `true` to instruct YouTube to sync the uploaded track to the video. If the value is `false`, YouTube uses the time codes in the uploaded caption track to determine when to display captions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutoSynced;

  /// The caption track's status. Valid values for this property are - `failed` - `serving` - `syncing`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed. Valid values for this property are - `processingFailed` - YouTube failed to process the uploaded caption track. - `unknownFormat` - The caption track's format was not recognized. - `unsupportedFormat` - The caption track's format is not supported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptionSnippet &&
    other.videoId == videoId &&
    other.lastUpdated == lastUpdated &&
    other.trackKind == trackKind &&
    other.language == language &&
    other.name == name &&
    other.audioTrackType == audioTrackType &&
    other.isCC == isCC &&
    other.isLarge == isLarge &&
    other.isEasyReader == isEasyReader &&
    other.isDraft == isDraft &&
    other.isAutoSynced == isAutoSynced &&
    other.status == status &&
    other.failureReason == failureReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (videoId.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode) +
    (trackKind == null ? 0 : trackKind!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (audioTrackType == null ? 0 : audioTrackType!.hashCode) +
    (isCC == null ? 0 : isCC!.hashCode) +
    (isLarge == null ? 0 : isLarge!.hashCode) +
    (isEasyReader == null ? 0 : isEasyReader!.hashCode) +
    (isDraft == null ? 0 : isDraft!.hashCode) +
    (isAutoSynced == null ? 0 : isAutoSynced!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode);

  @override
  String toString() => 'CaptionSnippet[videoId=$videoId, lastUpdated=$lastUpdated, trackKind=$trackKind, language=$language, name=$name, audioTrackType=$audioTrackType, isCC=$isCC, isLarge=$isLarge, isEasyReader=$isEasyReader, isDraft=$isDraft, isAutoSynced=$isAutoSynced, status=$status, failureReason=$failureReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'videoId'] = this.videoId;
    if (this.lastUpdated != null) {
      json[r'lastUpdated'] = this.lastUpdated!.toUtc().toIso8601String();
    } else {
      json[r'lastUpdated'] = null;
    }
    if (this.trackKind != null) {
      json[r'trackKind'] = this.trackKind;
    } else {
      json[r'trackKind'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.audioTrackType != null) {
      json[r'audioTrackType'] = this.audioTrackType;
    } else {
      json[r'audioTrackType'] = null;
    }
    if (this.isCC != null) {
      json[r'isCC'] = this.isCC;
    } else {
      json[r'isCC'] = null;
    }
    if (this.isLarge != null) {
      json[r'isLarge'] = this.isLarge;
    } else {
      json[r'isLarge'] = null;
    }
    if (this.isEasyReader != null) {
      json[r'isEasyReader'] = this.isEasyReader;
    } else {
      json[r'isEasyReader'] = null;
    }
    if (this.isDraft != null) {
      json[r'isDraft'] = this.isDraft;
    } else {
      json[r'isDraft'] = null;
    }
    if (this.isAutoSynced != null) {
      json[r'isAutoSynced'] = this.isAutoSynced;
    } else {
      json[r'isAutoSynced'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.failureReason != null) {
      json[r'failureReason'] = this.failureReason;
    } else {
      json[r'failureReason'] = null;
    }
    return json;
  }

  /// Returns a new [CaptionSnippet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptionSnippet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptionSnippet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptionSnippet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptionSnippet(
        videoId: mapValueOfType<String>(json, r'videoId')!,
        lastUpdated: mapDateTime(json, r'lastUpdated', r''),
        trackKind: mapValueOfType<String>(json, r'trackKind'),
        language: mapValueOfType<String>(json, r'language'),
        name: mapValueOfType<String>(json, r'name'),
        audioTrackType: mapValueOfType<String>(json, r'audioTrackType'),
        isCC: mapValueOfType<bool>(json, r'isCC'),
        isLarge: mapValueOfType<bool>(json, r'isLarge'),
        isEasyReader: mapValueOfType<bool>(json, r'isEasyReader'),
        isDraft: mapValueOfType<bool>(json, r'isDraft'),
        isAutoSynced: mapValueOfType<bool>(json, r'isAutoSynced'),
        status: mapValueOfType<String>(json, r'status'),
        failureReason: mapValueOfType<String>(json, r'failureReason'),
      );
    }
    return null;
  }

  static List<CaptionSnippet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptionSnippet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptionSnippet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptionSnippet> mapFromJson(dynamic json) {
    final map = <String, CaptionSnippet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptionSnippet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptionSnippet-objects as value to a dart map
  static Map<String, List<CaptionSnippet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptionSnippet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptionSnippet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'videoId',
  };
}
