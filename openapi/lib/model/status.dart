//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Status {
  /// Returns a new [Status] instance.
  Status({
    this.uploadStatus,
    this.failureReason,
    this.rejectionReason,
    this.privacyStatus,
    this.publishAt,
    this.license,
    this.embeddable,
    this.publicStatsViewable,
    this.madeForKids,
    this.selfDeclaredMadeForKids,
  });

  /// The status of the uploaded video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uploadStatus;

  /// This value explains why a video failed to upload. This property is only present if the `uploadStatus` property indicates that the upload failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureReason;

  /// This value explains why YouTube rejected an uploaded video. This property is only present if the `uploadStatus` property indicates that the upload was rejected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rejectionReason;

  /// The video's privacy status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privacyStatus;

  /// The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private. The value is specified in ISO 8601 format. Note the following two additional points about this property's behavior: - If you set this property's value when calling the videos.update method, you must also set the status.privacyStatus property value to private even if the video is already private. - If your request schedules a video to be published at some time in the past, the video will be published right away. As such, the effect of setting the status.publishAt property to a past date and time is the same as of changing the video's privacyStatus from private to public.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? publishAt;

  /// The license of the video.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? license;

  /// This value indicates whether the video can be embedded on another website.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? embeddable;

  /// This value indicates whether the extended video statistics on the video's watch page are publicly viewable. By default, those statistics are viewable, and statistics like a video's `viewCount` and ratings will still be publicly visible even if this property's value is set to `false`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicStatsViewable;

  /// This value indicates whether the video is designated as child-directed, and it contains the current \"made for kids\" status of the video. For example, the status might be determined based on the value of the `selfDeclaredMadeForKids` property.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? madeForKids;

  /// In a `videos.insert` or `videos.update` request, this property allows the channel owner to designate the video as being child-directed. In a `videos.list` request, the property value is only returned if the channel owner authorized the API request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? selfDeclaredMadeForKids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Status &&
    other.uploadStatus == uploadStatus &&
    other.failureReason == failureReason &&
    other.rejectionReason == rejectionReason &&
    other.privacyStatus == privacyStatus &&
    other.publishAt == publishAt &&
    other.license == license &&
    other.embeddable == embeddable &&
    other.publicStatsViewable == publicStatsViewable &&
    other.madeForKids == madeForKids &&
    other.selfDeclaredMadeForKids == selfDeclaredMadeForKids;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uploadStatus == null ? 0 : uploadStatus!.hashCode) +
    (failureReason == null ? 0 : failureReason!.hashCode) +
    (rejectionReason == null ? 0 : rejectionReason!.hashCode) +
    (privacyStatus == null ? 0 : privacyStatus!.hashCode) +
    (publishAt == null ? 0 : publishAt!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (embeddable == null ? 0 : embeddable!.hashCode) +
    (publicStatsViewable == null ? 0 : publicStatsViewable!.hashCode) +
    (madeForKids == null ? 0 : madeForKids!.hashCode) +
    (selfDeclaredMadeForKids == null ? 0 : selfDeclaredMadeForKids!.hashCode);

  @override
  String toString() => 'Status[uploadStatus=$uploadStatus, failureReason=$failureReason, rejectionReason=$rejectionReason, privacyStatus=$privacyStatus, publishAt=$publishAt, license=$license, embeddable=$embeddable, publicStatsViewable=$publicStatsViewable, madeForKids=$madeForKids, selfDeclaredMadeForKids=$selfDeclaredMadeForKids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uploadStatus != null) {
      json[r'uploadStatus'] = this.uploadStatus;
    } else {
      json[r'uploadStatus'] = null;
    }
    if (this.failureReason != null) {
      json[r'failureReason'] = this.failureReason;
    } else {
      json[r'failureReason'] = null;
    }
    if (this.rejectionReason != null) {
      json[r'rejectionReason'] = this.rejectionReason;
    } else {
      json[r'rejectionReason'] = null;
    }
    if (this.privacyStatus != null) {
      json[r'privacyStatus'] = this.privacyStatus;
    } else {
      json[r'privacyStatus'] = null;
    }
    if (this.publishAt != null) {
      json[r'publishAt'] = this.publishAt!.toUtc().toIso8601String();
    } else {
      json[r'publishAt'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.embeddable != null) {
      json[r'embeddable'] = this.embeddable;
    } else {
      json[r'embeddable'] = null;
    }
    if (this.publicStatsViewable != null) {
      json[r'publicStatsViewable'] = this.publicStatsViewable;
    } else {
      json[r'publicStatsViewable'] = null;
    }
    if (this.madeForKids != null) {
      json[r'madeForKids'] = this.madeForKids;
    } else {
      json[r'madeForKids'] = null;
    }
    if (this.selfDeclaredMadeForKids != null) {
      json[r'selfDeclaredMadeForKids'] = this.selfDeclaredMadeForKids;
    } else {
      json[r'selfDeclaredMadeForKids'] = null;
    }
    return json;
  }

  /// Returns a new [Status] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Status? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Status[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Status[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Status(
        uploadStatus: mapValueOfType<String>(json, r'uploadStatus'),
        failureReason: mapValueOfType<String>(json, r'failureReason'),
        rejectionReason: mapValueOfType<String>(json, r'rejectionReason'),
        privacyStatus: mapValueOfType<String>(json, r'privacyStatus'),
        publishAt: mapDateTime(json, r'publishAt', r''),
        license: mapValueOfType<String>(json, r'license'),
        embeddable: mapValueOfType<bool>(json, r'embeddable'),
        publicStatsViewable: mapValueOfType<bool>(json, r'publicStatsViewable'),
        madeForKids: mapValueOfType<bool>(json, r'madeForKids'),
        selfDeclaredMadeForKids: mapValueOfType<bool>(json, r'selfDeclaredMadeForKids'),
      );
    }
    return null;
  }

  static List<Status> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Status>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Status.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Status> mapFromJson(dynamic json) {
    final map = <String, Status>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Status.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Status>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Status.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
