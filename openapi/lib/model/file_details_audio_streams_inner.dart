//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileDetailsAudioStreamsInner {
  /// Returns a new [FileDetailsAudioStreamsInner] instance.
  FileDetailsAudioStreamsInner({
    this.channelCount,
    this.codec,
    this.bitrateBps,
    this.vendor,
  });

  /// TThe number of audio channels that the stream contains.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? channelCount;

  /// The codec of the audio stream.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codec;

  /// The bitrate of the audio stream in bits per second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bitrateBps;

  /// A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileDetailsAudioStreamsInner &&
    other.channelCount == channelCount &&
    other.codec == codec &&
    other.bitrateBps == bitrateBps &&
    other.vendor == vendor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channelCount == null ? 0 : channelCount!.hashCode) +
    (codec == null ? 0 : codec!.hashCode) +
    (bitrateBps == null ? 0 : bitrateBps!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode);

  @override
  String toString() => 'FileDetailsAudioStreamsInner[channelCount=$channelCount, codec=$codec, bitrateBps=$bitrateBps, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channelCount != null) {
      json[r'channelCount'] = this.channelCount;
    } else {
      json[r'channelCount'] = null;
    }
    if (this.codec != null) {
      json[r'codec'] = this.codec;
    } else {
      json[r'codec'] = null;
    }
    if (this.bitrateBps != null) {
      json[r'bitrateBps'] = this.bitrateBps;
    } else {
      json[r'bitrateBps'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    return json;
  }

  /// Returns a new [FileDetailsAudioStreamsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileDetailsAudioStreamsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileDetailsAudioStreamsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileDetailsAudioStreamsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileDetailsAudioStreamsInner(
        channelCount: mapValueOfType<int>(json, r'channelCount'),
        codec: mapValueOfType<String>(json, r'codec'),
        bitrateBps: mapValueOfType<int>(json, r'bitrateBps'),
        vendor: mapValueOfType<String>(json, r'vendor'),
      );
    }
    return null;
  }

  static List<FileDetailsAudioStreamsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileDetailsAudioStreamsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileDetailsAudioStreamsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileDetailsAudioStreamsInner> mapFromJson(dynamic json) {
    final map = <String, FileDetailsAudioStreamsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileDetailsAudioStreamsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileDetailsAudioStreamsInner-objects as value to a dart map
  static Map<String, List<FileDetailsAudioStreamsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileDetailsAudioStreamsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileDetailsAudioStreamsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
