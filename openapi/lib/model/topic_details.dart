//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TopicDetails {
  /// Returns a new [TopicDetails] instance.
  TopicDetails({
    this.topicIds = const [],
    this.relevantTopicIds = const [],
    this.topicCategories = const [],
  });

  /// Important: This property has been deprecated as of November 10, 2016. The API no longer returns values for this property, and any topics associated with a video are now returned by the `topicDetails.relevantTopicIds[]` property value.
  List<String> topicIds;

  /// A list of topic IDs that are relevant to the video. Important: This property has been deprecated as of November 10, 2016. It will be supported until November 10, 2017.
  List<String> relevantTopicIds;

  /// A list of Wikipedia URLs that provide a high-level description of the video's content.
  List<String> topicCategories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopicDetails &&
    _deepEquality.equals(other.topicIds, topicIds) &&
    _deepEquality.equals(other.relevantTopicIds, relevantTopicIds) &&
    _deepEquality.equals(other.topicCategories, topicCategories);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topicIds.hashCode) +
    (relevantTopicIds.hashCode) +
    (topicCategories.hashCode);

  @override
  String toString() => 'TopicDetails[topicIds=$topicIds, relevantTopicIds=$relevantTopicIds, topicCategories=$topicCategories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topicIds'] = this.topicIds;
      json[r'relevantTopicIds'] = this.relevantTopicIds;
      json[r'topicCategories'] = this.topicCategories;
    return json;
  }

  /// Returns a new [TopicDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopicDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopicDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopicDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopicDetails(
        topicIds: json[r'topicIds'] is Iterable
            ? (json[r'topicIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        relevantTopicIds: json[r'relevantTopicIds'] is Iterable
            ? (json[r'relevantTopicIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        topicCategories: json[r'topicCategories'] is Iterable
            ? (json[r'topicCategories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TopicDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopicDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopicDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopicDetails> mapFromJson(dynamic json) {
    final map = <String, TopicDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopicDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopicDetails-objects as value to a dart map
  static Map<String, List<TopicDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopicDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopicDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
