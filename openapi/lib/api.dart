//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';


part 'model/caption.dart';
part 'model/caption_list.dart';
part 'model/caption_snippet.dart';
part 'model/content_details.dart';
part 'model/content_details_region_restriction.dart';
part 'model/content_rating.dart';
part 'model/file_details.dart';
part 'model/file_details_audio_streams_inner.dart';
part 'model/file_details_video_streams_inner.dart';
part 'model/live_streaming_details.dart';
part 'model/localization.dart';
part 'model/localized.dart';
part 'model/page_info.dart';
part 'model/player.dart';
part 'model/processing_details.dart';
part 'model/processing_details_processing_progress.dart';
part 'model/recording_details.dart';
part 'model/snippet.dart';
part 'model/snippet_thumbnails.dart';
part 'model/statistics.dart';
part 'model/status.dart';
part 'model/suggestions.dart';
part 'model/suggestions_tag_suggestions_inner.dart';
part 'model/thumbnail.dart';
part 'model/topic_details.dart';
part 'model/video.dart';
part 'model/video_category.dart';
part 'model/video_category_list.dart';
part 'model/video_category_snippet.dart';
part 'model/video_list.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
