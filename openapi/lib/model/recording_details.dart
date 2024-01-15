//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecordingDetails {
  /// Returns a new [RecordingDetails] instance.
  RecordingDetails({
    this.recordingDate,
  });

  /// The date and time when the video was recorded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? recordingDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordingDetails &&
    other.recordingDate == recordingDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recordingDate == null ? 0 : recordingDate!.hashCode);

  @override
  String toString() => 'RecordingDetails[recordingDate=$recordingDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recordingDate != null) {
      json[r'recordingDate'] = this.recordingDate!.toUtc().toIso8601String();
    } else {
      json[r'recordingDate'] = null;
    }
    return json;
  }

  /// Returns a new [RecordingDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordingDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecordingDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecordingDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecordingDetails(
        recordingDate: mapDateTime(json, r'recordingDate', r''),
      );
    }
    return null;
  }

  static List<RecordingDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordingDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordingDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordingDetails> mapFromJson(dynamic json) {
    final map = <String, RecordingDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordingDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordingDetails-objects as value to a dart map
  static Map<String, List<RecordingDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordingDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordingDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
