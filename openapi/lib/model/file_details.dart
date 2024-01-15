//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileDetails {
  /// Returns a new [FileDetails] instance.
  FileDetails({
    this.fileName,
    this.fileSize,
    this.fileType,
    this.container,
    this.videoStreams = const [],
    this.audioStreams = const [],
    this.durationMs,
    this.bitrateBps,
    this.creationTime,
  });

  /// The name of the file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  /// The size of the file in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileSize;

  /// The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded. Valid values for this property are: - `video` - The file is a known video file type, such as an .mp4 file. - `archive` - The file is an archive file, such as a .zip archive. - `audio` - The file is a known audio file type, such as an .mp3 file. - `document` - The file is a document or text file, such as a MS Word document. - `image` - The file is an image file, such as a .jpeg image. - `other` - The file is another non-video file type. - `project` - The file is a video project file, such as a Microsoft Windows Movie Maker project, that does not contain actual video data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileType;

  /// The uploaded video file's container format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? container;

  /// A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream.
  List<FileDetailsVideoStreamsInner> videoStreams;

  /// A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream.
  List<FileDetailsAudioStreamsInner> audioStreams;

  /// The length of the uploaded video in milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  /// The uploaded video file's combined (video and audio) bitrate in bits per second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bitrateBps;

  /// The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported: - Date only: `YYYY-MM-DD` - Naive time: `YYYY-MM-DDTHH:MM:SS` - Time with timezone: `YYYY-MM-DDTHH:MM:SS+HH:MM`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? creationTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileDetails &&
    other.fileName == fileName &&
    other.fileSize == fileSize &&
    other.fileType == fileType &&
    other.container == container &&
    _deepEquality.equals(other.videoStreams, videoStreams) &&
    _deepEquality.equals(other.audioStreams, audioStreams) &&
    other.durationMs == durationMs &&
    other.bitrateBps == bitrateBps &&
    other.creationTime == creationTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileName == null ? 0 : fileName!.hashCode) +
    (fileSize == null ? 0 : fileSize!.hashCode) +
    (fileType == null ? 0 : fileType!.hashCode) +
    (container == null ? 0 : container!.hashCode) +
    (videoStreams.hashCode) +
    (audioStreams.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (bitrateBps == null ? 0 : bitrateBps!.hashCode) +
    (creationTime == null ? 0 : creationTime!.hashCode);

  @override
  String toString() => 'FileDetails[fileName=$fileName, fileSize=$fileSize, fileType=$fileType, container=$container, videoStreams=$videoStreams, audioStreams=$audioStreams, durationMs=$durationMs, bitrateBps=$bitrateBps, creationTime=$creationTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fileName != null) {
      json[r'fileName'] = this.fileName;
    } else {
      json[r'fileName'] = null;
    }
    if (this.fileSize != null) {
      json[r'fileSize'] = this.fileSize;
    } else {
      json[r'fileSize'] = null;
    }
    if (this.fileType != null) {
      json[r'fileType'] = this.fileType;
    } else {
      json[r'fileType'] = null;
    }
    if (this.container != null) {
      json[r'container'] = this.container;
    } else {
      json[r'container'] = null;
    }
      json[r'videoStreams'] = this.videoStreams;
      json[r'audioStreams'] = this.audioStreams;
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.bitrateBps != null) {
      json[r'bitrateBps'] = this.bitrateBps;
    } else {
      json[r'bitrateBps'] = null;
    }
    if (this.creationTime != null) {
      json[r'creationTime'] = this.creationTime;
    } else {
      json[r'creationTime'] = null;
    }
    return json;
  }

  /// Returns a new [FileDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileDetails(
        fileName: mapValueOfType<String>(json, r'fileName'),
        fileSize: mapValueOfType<int>(json, r'fileSize'),
        fileType: mapValueOfType<String>(json, r'fileType'),
        container: mapValueOfType<String>(json, r'container'),
        videoStreams: FileDetailsVideoStreamsInner.listFromJson(json[r'videoStreams']),
        audioStreams: FileDetailsAudioStreamsInner.listFromJson(json[r'audioStreams']),
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        bitrateBps: mapValueOfType<int>(json, r'bitrateBps'),
        creationTime: mapValueOfType<String>(json, r'creationTime'),
      );
    }
    return null;
  }

  static List<FileDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileDetails> mapFromJson(dynamic json) {
    final map = <String, FileDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileDetails-objects as value to a dart map
  static Map<String, List<FileDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
