//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Suggestions {
  /// Returns a new [Suggestions] instance.
  Suggestions({
    this.processingErrors = const [],
    this.processingWarnings = const [],
    this.processingHints = const [],
    this.tagSuggestions = const [],
    this.editorSuggestions = const [],
  });

  /// A list of errors that will prevent YouTube from successfully processing the uploaded video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed. Valid values for this property are: - `archiveFile` - An archive file (e.g., a ZIP archive). - `audioFile` - File contains audio only (e.g., an MP3 file). - `docFile` - Document or text file (e.g., MS Word document). - `imageFile` - Image file (e.g., a JPEG image). - `notAVideoFile` - Other non-video file. - `projectFile` - Movie project file (e.g., Microsoft Windows Movie Maker project).
  List<String> processingErrors;

  /// A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that do not necessarily indicate that video processing will fail but that still might cause problems such as sync issues, video artifacts, or a missing audio track. Valid values for this property are: - `hasEditlist` - Edit lists are not currently supported. - `inconsistentResolution` - Conflicting container and stream resolutions. - `problematicAudioCodec` - Audio codec that is known to cause problems was used. - `problematicVideoCodec` - Video codec that is known to cause problems was used. - `unknownAudioCodec` - Unrecognized audio codec, transcoding is likely to fail. - `unknownContainer` - Unrecognized file format, transcoding is likely to fail. - `unknownVideoCodec` - Unrecognized video codec, transcoding is likely to fail.
  List<String> processingWarnings;

  /// A list of suggestions that may improve YouTube's ability to process the video. Valid values for this property are: - `nonStreamableMov` - The MP4 file is not streamable, this will slow down the processing. - `sendBestQualityVideo` - Probably a better quality version of the video exists.
  List<String> processingHints;

  /// A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube.
  List<SuggestionsTagSuggestionsInner> tagSuggestions;

  /// A list of video editing operations that might improve the video quality or playback experience of the uploaded video. Valid values for this property are: - `audioQuietAudioSwap` - The audio track appears silent and could be swapped with a better quality one. - `videoAutoLevels` - Picture brightness levels seem off and could be corrected. - `videoCrop` - Margins (mattes) detected around the picture could be cropped. - `videoStabilize` - The video appears shaky and could be stabilized.
  List<String> editorSuggestions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Suggestions &&
    _deepEquality.equals(other.processingErrors, processingErrors) &&
    _deepEquality.equals(other.processingWarnings, processingWarnings) &&
    _deepEquality.equals(other.processingHints, processingHints) &&
    _deepEquality.equals(other.tagSuggestions, tagSuggestions) &&
    _deepEquality.equals(other.editorSuggestions, editorSuggestions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (processingErrors.hashCode) +
    (processingWarnings.hashCode) +
    (processingHints.hashCode) +
    (tagSuggestions.hashCode) +
    (editorSuggestions.hashCode);

  @override
  String toString() => 'Suggestions[processingErrors=$processingErrors, processingWarnings=$processingWarnings, processingHints=$processingHints, tagSuggestions=$tagSuggestions, editorSuggestions=$editorSuggestions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'processingErrors'] = this.processingErrors;
      json[r'processingWarnings'] = this.processingWarnings;
      json[r'processingHints'] = this.processingHints;
      json[r'tagSuggestions'] = this.tagSuggestions;
      json[r'editorSuggestions'] = this.editorSuggestions;
    return json;
  }

  /// Returns a new [Suggestions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suggestions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Suggestions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Suggestions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Suggestions(
        processingErrors: json[r'processingErrors'] is Iterable
            ? (json[r'processingErrors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processingWarnings: json[r'processingWarnings'] is Iterable
            ? (json[r'processingWarnings'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processingHints: json[r'processingHints'] is Iterable
            ? (json[r'processingHints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tagSuggestions: SuggestionsTagSuggestionsInner.listFromJson(json[r'tagSuggestions']),
        editorSuggestions: json[r'editorSuggestions'] is Iterable
            ? (json[r'editorSuggestions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Suggestions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Suggestions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suggestions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suggestions> mapFromJson(dynamic json) {
    final map = <String, Suggestions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suggestions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suggestions-objects as value to a dart map
  static Map<String, List<Suggestions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Suggestions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suggestions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
