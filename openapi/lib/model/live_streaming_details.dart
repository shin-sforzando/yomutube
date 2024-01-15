//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LiveStreamingDetails {
  /// Returns a new [LiveStreamingDetails] instance.
  LiveStreamingDetails({
    this.actualStartTime,
    this.actualEndTime,
    this.scheduledStartTime,
    this.scheduledEndTime,
    this.concurrentViewers,
    this.activeLiveChatId,
  });

  /// The time that the broadcast actually started. The value is specified in ISO 8601 format. This value will not be available until the broadcast begins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualStartTime;

  /// The time that the broadcast actually ended. The value is specified in ISO 8601 format. This value will not be available until the broadcast is over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualEndTime;

  /// The time that the broadcast is scheduled to begin. The value is specified in ISO 8601 format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledStartTime;

  /// The time that the broadcast is scheduled to end. The value is specified in ISO 8601 format. If the value is empty or the property is not present, then the broadcast is scheduled to continue indefinitely.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledEndTime;

  /// The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the `viewCount` for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? concurrentViewers;

  /// The ID of the currently active live chat attached to this video. This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts that live chat id will no longer be tied to this video but rather to the new video being displayed at the persistent page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? activeLiveChatId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LiveStreamingDetails &&
    other.actualStartTime == actualStartTime &&
    other.actualEndTime == actualEndTime &&
    other.scheduledStartTime == scheduledStartTime &&
    other.scheduledEndTime == scheduledEndTime &&
    other.concurrentViewers == concurrentViewers &&
    other.activeLiveChatId == activeLiveChatId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actualStartTime == null ? 0 : actualStartTime!.hashCode) +
    (actualEndTime == null ? 0 : actualEndTime!.hashCode) +
    (scheduledStartTime == null ? 0 : scheduledStartTime!.hashCode) +
    (scheduledEndTime == null ? 0 : scheduledEndTime!.hashCode) +
    (concurrentViewers == null ? 0 : concurrentViewers!.hashCode) +
    (activeLiveChatId == null ? 0 : activeLiveChatId!.hashCode);

  @override
  String toString() => 'LiveStreamingDetails[actualStartTime=$actualStartTime, actualEndTime=$actualEndTime, scheduledStartTime=$scheduledStartTime, scheduledEndTime=$scheduledEndTime, concurrentViewers=$concurrentViewers, activeLiveChatId=$activeLiveChatId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actualStartTime != null) {
      json[r'actualStartTime'] = this.actualStartTime!.toUtc().toIso8601String();
    } else {
      json[r'actualStartTime'] = null;
    }
    if (this.actualEndTime != null) {
      json[r'actualEndTime'] = this.actualEndTime!.toUtc().toIso8601String();
    } else {
      json[r'actualEndTime'] = null;
    }
    if (this.scheduledStartTime != null) {
      json[r'scheduledStartTime'] = this.scheduledStartTime!.toUtc().toIso8601String();
    } else {
      json[r'scheduledStartTime'] = null;
    }
    if (this.scheduledEndTime != null) {
      json[r'scheduledEndTime'] = this.scheduledEndTime!.toUtc().toIso8601String();
    } else {
      json[r'scheduledEndTime'] = null;
    }
    if (this.concurrentViewers != null) {
      json[r'concurrentViewers'] = this.concurrentViewers;
    } else {
      json[r'concurrentViewers'] = null;
    }
    if (this.activeLiveChatId != null) {
      json[r'activeLiveChatId'] = this.activeLiveChatId;
    } else {
      json[r'activeLiveChatId'] = null;
    }
    return json;
  }

  /// Returns a new [LiveStreamingDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LiveStreamingDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LiveStreamingDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LiveStreamingDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LiveStreamingDetails(
        actualStartTime: mapDateTime(json, r'actualStartTime', r''),
        actualEndTime: mapDateTime(json, r'actualEndTime', r''),
        scheduledStartTime: mapDateTime(json, r'scheduledStartTime', r''),
        scheduledEndTime: mapDateTime(json, r'scheduledEndTime', r''),
        concurrentViewers: mapValueOfType<int>(json, r'concurrentViewers'),
        activeLiveChatId: mapValueOfType<String>(json, r'activeLiveChatId'),
      );
    }
    return null;
  }

  static List<LiveStreamingDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LiveStreamingDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LiveStreamingDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LiveStreamingDetails> mapFromJson(dynamic json) {
    final map = <String, LiveStreamingDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LiveStreamingDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LiveStreamingDetails-objects as value to a dart map
  static Map<String, List<LiveStreamingDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LiveStreamingDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LiveStreamingDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
