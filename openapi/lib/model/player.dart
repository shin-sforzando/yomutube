//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Player {
  /// Returns a new [Player] instance.
  Player({
    this.embedHtml,
    this.embedHeight,
    this.embedWidth,
  });

  /// An `<iframe>` tag that embeds a player that plays the video. If the API request to retrieve the resource specifies a value for the maxHeight and/or maxWidth parameters, the size of the embedded player is scaled to satisfy the maxHeight and/or maxWidth requirements. If the video's aspect ratio is unknown, the embedded player defaults to a 4:3 format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? embedHtml;

  /// The height of the embedded player returned in the `player.embedHtml` property. This property is only returned if the request specified a value for the maxHeight and/or maxWidth parameters and the video's aspect ratio is known.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? embedHeight;

  /// The width of the embedded player returned in the `player.embedHtml` property. This property is only returned if the request specified a value for the maxHeight and/or maxWidth parameters and the video's aspect ratio is known.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? embedWidth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Player &&
    other.embedHtml == embedHtml &&
    other.embedHeight == embedHeight &&
    other.embedWidth == embedWidth;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (embedHtml == null ? 0 : embedHtml!.hashCode) +
    (embedHeight == null ? 0 : embedHeight!.hashCode) +
    (embedWidth == null ? 0 : embedWidth!.hashCode);

  @override
  String toString() => 'Player[embedHtml=$embedHtml, embedHeight=$embedHeight, embedWidth=$embedWidth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.embedHtml != null) {
      json[r'embedHtml'] = this.embedHtml;
    } else {
      json[r'embedHtml'] = null;
    }
    if (this.embedHeight != null) {
      json[r'embedHeight'] = this.embedHeight;
    } else {
      json[r'embedHeight'] = null;
    }
    if (this.embedWidth != null) {
      json[r'embedWidth'] = this.embedWidth;
    } else {
      json[r'embedWidth'] = null;
    }
    return json;
  }

  /// Returns a new [Player] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Player? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Player[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Player[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Player(
        embedHtml: mapValueOfType<String>(json, r'embedHtml'),
        embedHeight: mapValueOfType<int>(json, r'embedHeight'),
        embedWidth: mapValueOfType<int>(json, r'embedWidth'),
      );
    }
    return null;
  }

  static List<Player> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Player>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Player.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Player> mapFromJson(dynamic json) {
    final map = <String, Player>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Player.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Player-objects as value to a dart map
  static Map<String, List<Player>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Player>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Player.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
