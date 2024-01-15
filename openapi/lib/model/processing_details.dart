//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessingDetails {
  /// Returns a new [ProcessingDetails] instance.
  ProcessingDetails({
    this.processingStatus,
    this.processingProgress,
    this.processingFailureReason,
    this.fileDetailsAvailability,
    this.processingIssuesAvailability,
    this.tagSuggestionsAvailability,
    this.editorSuggestionsAvailability,
    this.thumbnailsAvailability,
  });

  /// The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. Valid values for this property are: - `succeeded` - Video has been successfully processed. - `failed` - Video processing has failed. See ProcessingFailureReason. - `processing` - Video is currently being processed. See ProcessingProgress. - `terminated` - Processing information is no longer available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processingStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProcessingDetailsProcessingProgress? processingProgress;

  /// The reason that YouTube failed to process the video. This property will only have a value if the `processingStatus` property's value is `failed`. Valid values for this property are: - `other` - Some other processing component has failed. - `streamingFailed` - Video could not be sent to streamers. - `transcodeFailed` - Content transcoding has failed. - `uploadFailed` - File delivery has failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processingFailureReason;

  /// This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the `fileDetails` part in your `videos.list()` request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileDetailsAvailability;

  /// This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the `suggestions` part in your `videos.list()` request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processingIssuesAvailability;

  /// This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the `suggestions` part in your `videos.list()` request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagSuggestionsAvailability;

  /// This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the `suggestions` part in your `videos.list()` request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? editorSuggestionsAvailability;

  /// This value indicates whether thumbnail images have been generated for the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbnailsAvailability;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessingDetails &&
    other.processingStatus == processingStatus &&
    other.processingProgress == processingProgress &&
    other.processingFailureReason == processingFailureReason &&
    other.fileDetailsAvailability == fileDetailsAvailability &&
    other.processingIssuesAvailability == processingIssuesAvailability &&
    other.tagSuggestionsAvailability == tagSuggestionsAvailability &&
    other.editorSuggestionsAvailability == editorSuggestionsAvailability &&
    other.thumbnailsAvailability == thumbnailsAvailability;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processingStatus == null ? 0 : processingStatus!.hashCode) +
    (processingProgress == null ? 0 : processingProgress!.hashCode) +
    (processingFailureReason == null ? 0 : processingFailureReason!.hashCode) +
    (fileDetailsAvailability == null ? 0 : fileDetailsAvailability!.hashCode) +
    (processingIssuesAvailability == null ? 0 : processingIssuesAvailability!.hashCode) +
    (tagSuggestionsAvailability == null ? 0 : tagSuggestionsAvailability!.hashCode) +
    (editorSuggestionsAvailability == null ? 0 : editorSuggestionsAvailability!.hashCode) +
    (thumbnailsAvailability == null ? 0 : thumbnailsAvailability!.hashCode);

  @override
  String toString() => 'ProcessingDetails[processingStatus=$processingStatus, processingProgress=$processingProgress, processingFailureReason=$processingFailureReason, fileDetailsAvailability=$fileDetailsAvailability, processingIssuesAvailability=$processingIssuesAvailability, tagSuggestionsAvailability=$tagSuggestionsAvailability, editorSuggestionsAvailability=$editorSuggestionsAvailability, thumbnailsAvailability=$thumbnailsAvailability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.processingStatus != null) {
      json[r'processingStatus'] = this.processingStatus;
    } else {
      json[r'processingStatus'] = null;
    }
    if (this.processingProgress != null) {
      json[r'processingProgress'] = this.processingProgress;
    } else {
      json[r'processingProgress'] = null;
    }
    if (this.processingFailureReason != null) {
      json[r'processingFailureReason'] = this.processingFailureReason;
    } else {
      json[r'processingFailureReason'] = null;
    }
    if (this.fileDetailsAvailability != null) {
      json[r'fileDetailsAvailability'] = this.fileDetailsAvailability;
    } else {
      json[r'fileDetailsAvailability'] = null;
    }
    if (this.processingIssuesAvailability != null) {
      json[r'processingIssuesAvailability'] = this.processingIssuesAvailability;
    } else {
      json[r'processingIssuesAvailability'] = null;
    }
    if (this.tagSuggestionsAvailability != null) {
      json[r'tagSuggestionsAvailability'] = this.tagSuggestionsAvailability;
    } else {
      json[r'tagSuggestionsAvailability'] = null;
    }
    if (this.editorSuggestionsAvailability != null) {
      json[r'editorSuggestionsAvailability'] = this.editorSuggestionsAvailability;
    } else {
      json[r'editorSuggestionsAvailability'] = null;
    }
    if (this.thumbnailsAvailability != null) {
      json[r'thumbnailsAvailability'] = this.thumbnailsAvailability;
    } else {
      json[r'thumbnailsAvailability'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessingDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessingDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessingDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessingDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessingDetails(
        processingStatus: mapValueOfType<String>(json, r'processingStatus'),
        processingProgress: ProcessingDetailsProcessingProgress.fromJson(json[r'processingProgress']),
        processingFailureReason: mapValueOfType<String>(json, r'processingFailureReason'),
        fileDetailsAvailability: mapValueOfType<String>(json, r'fileDetailsAvailability'),
        processingIssuesAvailability: mapValueOfType<String>(json, r'processingIssuesAvailability'),
        tagSuggestionsAvailability: mapValueOfType<String>(json, r'tagSuggestionsAvailability'),
        editorSuggestionsAvailability: mapValueOfType<String>(json, r'editorSuggestionsAvailability'),
        thumbnailsAvailability: mapValueOfType<String>(json, r'thumbnailsAvailability'),
      );
    }
    return null;
  }

  static List<ProcessingDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessingDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessingDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessingDetails> mapFromJson(dynamic json) {
    final map = <String, ProcessingDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessingDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessingDetails-objects as value to a dart map
  static Map<String, List<ProcessingDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessingDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessingDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
