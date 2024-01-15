//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Video {
  /// Returns a new [Video] instance.
  Video({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    this.contentDetails,
    this.status,
    this.statistics,
    this.player,
    this.topicDetails,
    this.recordingDetails,
    this.fileDetails,
    this.processingDetails,
    this.suggestions,
    this.liveStreamingDetails,
    this.localizations,
  });

  /// Identifies the API resource's type. The value will be `youtube#video`.
  String kind;

  /// The Etag of this resource.
  String etag;

  /// The ID that YouTube uses to uniquely identify the video.
  String id;

  Snippet snippet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContentDetails? contentDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Status? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Statistics? statistics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Player? player;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TopicDetails? topicDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RecordingDetails? recordingDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FileDetails? fileDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessingDetails? processingDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Suggestions? suggestions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LiveStreamingDetails? liveStreamingDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Localization? localizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Video &&
    other.kind == kind &&
    other.etag == etag &&
    other.id == id &&
    other.snippet == snippet &&
    other.contentDetails == contentDetails &&
    other.status == status &&
    other.statistics == statistics &&
    other.player == player &&
    other.topicDetails == topicDetails &&
    other.recordingDetails == recordingDetails &&
    other.fileDetails == fileDetails &&
    other.processingDetails == processingDetails &&
    other.suggestions == suggestions &&
    other.liveStreamingDetails == liveStreamingDetails &&
    other.localizations == localizations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (etag.hashCode) +
    (id.hashCode) +
    (snippet.hashCode) +
    (contentDetails == null ? 0 : contentDetails!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statistics == null ? 0 : statistics!.hashCode) +
    (player == null ? 0 : player!.hashCode) +
    (topicDetails == null ? 0 : topicDetails!.hashCode) +
    (recordingDetails == null ? 0 : recordingDetails!.hashCode) +
    (fileDetails == null ? 0 : fileDetails!.hashCode) +
    (processingDetails == null ? 0 : processingDetails!.hashCode) +
    (suggestions == null ? 0 : suggestions!.hashCode) +
    (liveStreamingDetails == null ? 0 : liveStreamingDetails!.hashCode) +
    (localizations == null ? 0 : localizations!.hashCode);

  @override
  String toString() => 'Video[kind=$kind, etag=$etag, id=$id, snippet=$snippet, contentDetails=$contentDetails, status=$status, statistics=$statistics, player=$player, topicDetails=$topicDetails, recordingDetails=$recordingDetails, fileDetails=$fileDetails, processingDetails=$processingDetails, suggestions=$suggestions, liveStreamingDetails=$liveStreamingDetails, localizations=$localizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'etag'] = this.etag;
      json[r'id'] = this.id;
      json[r'snippet'] = this.snippet;
    if (this.contentDetails != null) {
      json[r'contentDetails'] = this.contentDetails;
    } else {
      json[r'contentDetails'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statistics != null) {
      json[r'statistics'] = this.statistics;
    } else {
      json[r'statistics'] = null;
    }
    if (this.player != null) {
      json[r'player'] = this.player;
    } else {
      json[r'player'] = null;
    }
    if (this.topicDetails != null) {
      json[r'topicDetails'] = this.topicDetails;
    } else {
      json[r'topicDetails'] = null;
    }
    if (this.recordingDetails != null) {
      json[r'recordingDetails'] = this.recordingDetails;
    } else {
      json[r'recordingDetails'] = null;
    }
    if (this.fileDetails != null) {
      json[r'fileDetails'] = this.fileDetails;
    } else {
      json[r'fileDetails'] = null;
    }
    if (this.processingDetails != null) {
      json[r'processingDetails'] = this.processingDetails;
    } else {
      json[r'processingDetails'] = null;
    }
    if (this.suggestions != null) {
      json[r'suggestions'] = this.suggestions;
    } else {
      json[r'suggestions'] = null;
    }
    if (this.liveStreamingDetails != null) {
      json[r'liveStreamingDetails'] = this.liveStreamingDetails;
    } else {
      json[r'liveStreamingDetails'] = null;
    }
    if (this.localizations != null) {
      json[r'localizations'] = this.localizations;
    } else {
      json[r'localizations'] = null;
    }
    return json;
  }

  /// Returns a new [Video] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Video? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Video[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Video[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Video(
        kind: mapValueOfType<String>(json, r'kind')!,
        etag: mapValueOfType<String>(json, r'etag')!,
        id: mapValueOfType<String>(json, r'id')!,
        snippet: Snippet.fromJson(json[r'snippet'])!,
        contentDetails: ContentDetails.fromJson(json[r'contentDetails']),
        status: Status.fromJson(json[r'status']),
        statistics: Statistics.fromJson(json[r'statistics']),
        player: Player.fromJson(json[r'player']),
        topicDetails: TopicDetails.fromJson(json[r'topicDetails']),
        recordingDetails: RecordingDetails.fromJson(json[r'recordingDetails']),
        fileDetails: FileDetails.fromJson(json[r'fileDetails']),
        processingDetails: ProcessingDetails.fromJson(json[r'processingDetails']),
        suggestions: Suggestions.fromJson(json[r'suggestions']),
        liveStreamingDetails: LiveStreamingDetails.fromJson(json[r'liveStreamingDetails']),
        localizations: Localization.fromJson(json[r'localizations']),
      );
    }
    return null;
  }

  static List<Video> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Video>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Video.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Video> mapFromJson(dynamic json) {
    final map = <String, Video>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Video.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Video-objects as value to a dart map
  static Map<String, List<Video>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Video>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Video.listFromJson(entry.value, growable: growable,);
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
