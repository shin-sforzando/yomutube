//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileDetailsVideoStreamsInner {
  /// Returns a new [FileDetailsVideoStreamsInner] instance.
  FileDetailsVideoStreamsInner({
    this.widthPixels,
    this.heightPixels,
    this.frameRateFps,
    this.aspectRatio,
    this.codec,
    this.bitrateBps,
    this.rotation,
    this.vendor,
  });

  /// The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as `width_pixels` / `height_pixels`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? widthPixels;

  /// The encoded video content's height in pixels.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heightPixels;

  /// The video stream's frame rate, in frames per second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? frameRateFps;

  /// The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? aspectRatio;

  /// The video codec that the stream uses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codec;

  /// The video stream's bitrate, in bits per second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bitrateBps;

  /// The amount that YouTube needs to rotate the original source content to properly display the video. Valid values for this property are: - `none` - The video does not need to be rotated. - `clockwise` - The video needs to be rotated 90 degrees clockwise. - `counterClockwise` - The video needs to be rotated 90 degrees counter-clockwise. - `other` - The video needs to be rotated in some other, non-trivial way. - `upsideDown` - The video needs to be rotated upside down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rotation;

  /// A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileDetailsVideoStreamsInner &&
    other.widthPixels == widthPixels &&
    other.heightPixels == heightPixels &&
    other.frameRateFps == frameRateFps &&
    other.aspectRatio == aspectRatio &&
    other.codec == codec &&
    other.bitrateBps == bitrateBps &&
    other.rotation == rotation &&
    other.vendor == vendor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (widthPixels == null ? 0 : widthPixels!.hashCode) +
    (heightPixels == null ? 0 : heightPixels!.hashCode) +
    (frameRateFps == null ? 0 : frameRateFps!.hashCode) +
    (aspectRatio == null ? 0 : aspectRatio!.hashCode) +
    (codec == null ? 0 : codec!.hashCode) +
    (bitrateBps == null ? 0 : bitrateBps!.hashCode) +
    (rotation == null ? 0 : rotation!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode);

  @override
  String toString() => 'FileDetailsVideoStreamsInner[widthPixels=$widthPixels, heightPixels=$heightPixels, frameRateFps=$frameRateFps, aspectRatio=$aspectRatio, codec=$codec, bitrateBps=$bitrateBps, rotation=$rotation, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.widthPixels != null) {
      json[r'widthPixels'] = this.widthPixels;
    } else {
      json[r'widthPixels'] = null;
    }
    if (this.heightPixels != null) {
      json[r'heightPixels'] = this.heightPixels;
    } else {
      json[r'heightPixels'] = null;
    }
    if (this.frameRateFps != null) {
      json[r'frameRateFps'] = this.frameRateFps;
    } else {
      json[r'frameRateFps'] = null;
    }
    if (this.aspectRatio != null) {
      json[r'aspectRatio'] = this.aspectRatio;
    } else {
      json[r'aspectRatio'] = null;
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
    if (this.rotation != null) {
      json[r'rotation'] = this.rotation;
    } else {
      json[r'rotation'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    return json;
  }

  /// Returns a new [FileDetailsVideoStreamsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileDetailsVideoStreamsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileDetailsVideoStreamsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileDetailsVideoStreamsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileDetailsVideoStreamsInner(
        widthPixels: mapValueOfType<int>(json, r'widthPixels'),
        heightPixels: mapValueOfType<int>(json, r'heightPixels'),
        frameRateFps: mapValueOfType<double>(json, r'frameRateFps'),
        aspectRatio: mapValueOfType<double>(json, r'aspectRatio'),
        codec: mapValueOfType<String>(json, r'codec'),
        bitrateBps: mapValueOfType<int>(json, r'bitrateBps'),
        rotation: mapValueOfType<String>(json, r'rotation'),
        vendor: mapValueOfType<String>(json, r'vendor'),
      );
    }
    return null;
  }

  static List<FileDetailsVideoStreamsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileDetailsVideoStreamsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileDetailsVideoStreamsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileDetailsVideoStreamsInner> mapFromJson(dynamic json) {
    final map = <String, FileDetailsVideoStreamsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileDetailsVideoStreamsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileDetailsVideoStreamsInner-objects as value to a dart map
  static Map<String, List<FileDetailsVideoStreamsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileDetailsVideoStreamsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileDetailsVideoStreamsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
