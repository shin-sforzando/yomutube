//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessingDetailsProcessingProgress {
  /// Returns a new [ProcessingDetailsProcessingProgress] instance.
  ProcessingDetailsProcessingProgress({
    this.partsTotal,
    this.partsProcessed,
    this.timeLeftMs,
  });

  /// An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? partsTotal;

  /// The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: `100 * parts_processed / parts_total` Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? partsProcessed;

  /// An estimate of the amount of time, in milliseconds, that YouTube needs to finish processing the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeLeftMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessingDetailsProcessingProgress &&
    other.partsTotal == partsTotal &&
    other.partsProcessed == partsProcessed &&
    other.timeLeftMs == timeLeftMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (partsTotal == null ? 0 : partsTotal!.hashCode) +
    (partsProcessed == null ? 0 : partsProcessed!.hashCode) +
    (timeLeftMs == null ? 0 : timeLeftMs!.hashCode);

  @override
  String toString() => 'ProcessingDetailsProcessingProgress[partsTotal=$partsTotal, partsProcessed=$partsProcessed, timeLeftMs=$timeLeftMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.partsTotal != null) {
      json[r'partsTotal'] = this.partsTotal;
    } else {
      json[r'partsTotal'] = null;
    }
    if (this.partsProcessed != null) {
      json[r'partsProcessed'] = this.partsProcessed;
    } else {
      json[r'partsProcessed'] = null;
    }
    if (this.timeLeftMs != null) {
      json[r'timeLeftMs'] = this.timeLeftMs;
    } else {
      json[r'timeLeftMs'] = null;
    }
    return json;
  }

  /// Returns a new [ProcessingDetailsProcessingProgress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessingDetailsProcessingProgress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessingDetailsProcessingProgress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessingDetailsProcessingProgress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessingDetailsProcessingProgress(
        partsTotal: mapValueOfType<int>(json, r'partsTotal'),
        partsProcessed: mapValueOfType<int>(json, r'partsProcessed'),
        timeLeftMs: mapValueOfType<int>(json, r'timeLeftMs'),
      );
    }
    return null;
  }

  static List<ProcessingDetailsProcessingProgress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessingDetailsProcessingProgress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessingDetailsProcessingProgress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessingDetailsProcessingProgress> mapFromJson(dynamic json) {
    final map = <String, ProcessingDetailsProcessingProgress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessingDetailsProcessingProgress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessingDetailsProcessingProgress-objects as value to a dart map
  static Map<String, List<ProcessingDetailsProcessingProgress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessingDetailsProcessingProgress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessingDetailsProcessingProgress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
