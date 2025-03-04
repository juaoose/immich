//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetBulkUploadCheckResult {
  /// Returns a new [AssetBulkUploadCheckResult] instance.
  AssetBulkUploadCheckResult({
    required this.id,
    required this.action,
    this.reason,
    this.assetId,
  });

  String id;

  AssetBulkUploadCheckResultActionEnum action;

  AssetBulkUploadCheckResultReasonEnum? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetBulkUploadCheckResult &&
     other.id == id &&
     other.action == action &&
     other.reason == reason &&
     other.assetId == assetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (action.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode);

  @override
  String toString() => 'AssetBulkUploadCheckResult[id=$id, action=$action, reason=$reason, assetId=$assetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'action'] = this.action;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      // json[r'reason'] = null;
    }
    if (this.assetId != null) {
      json[r'assetId'] = this.assetId;
    } else {
      // json[r'assetId'] = null;
    }
    return json;
  }

  /// Returns a new [AssetBulkUploadCheckResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetBulkUploadCheckResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssetBulkUploadCheckResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssetBulkUploadCheckResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssetBulkUploadCheckResult(
        id: mapValueOfType<String>(json, r'id')!,
        action: AssetBulkUploadCheckResultActionEnum.fromJson(json[r'action'])!,
        reason: AssetBulkUploadCheckResultReasonEnum.fromJson(json[r'reason']),
        assetId: mapValueOfType<String>(json, r'assetId'),
      );
    }
    return null;
  }

  static List<AssetBulkUploadCheckResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetBulkUploadCheckResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetBulkUploadCheckResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetBulkUploadCheckResult> mapFromJson(dynamic json) {
    final map = <String, AssetBulkUploadCheckResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetBulkUploadCheckResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetBulkUploadCheckResult-objects as value to a dart map
  static Map<String, List<AssetBulkUploadCheckResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetBulkUploadCheckResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetBulkUploadCheckResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'action',
  };
}


class AssetBulkUploadCheckResultActionEnum {
  /// Instantiate a new enum with the provided [value].
  const AssetBulkUploadCheckResultActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accept = AssetBulkUploadCheckResultActionEnum._(r'accept');
  static const reject = AssetBulkUploadCheckResultActionEnum._(r'reject');

  /// List of all possible values in this [enum][AssetBulkUploadCheckResultActionEnum].
  static const values = <AssetBulkUploadCheckResultActionEnum>[
    accept,
    reject,
  ];

  static AssetBulkUploadCheckResultActionEnum? fromJson(dynamic value) => AssetBulkUploadCheckResultActionEnumTypeTransformer().decode(value);

  static List<AssetBulkUploadCheckResultActionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetBulkUploadCheckResultActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetBulkUploadCheckResultActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetBulkUploadCheckResultActionEnum] to String,
/// and [decode] dynamic data back to [AssetBulkUploadCheckResultActionEnum].
class AssetBulkUploadCheckResultActionEnumTypeTransformer {
  factory AssetBulkUploadCheckResultActionEnumTypeTransformer() => _instance ??= const AssetBulkUploadCheckResultActionEnumTypeTransformer._();

  const AssetBulkUploadCheckResultActionEnumTypeTransformer._();

  String encode(AssetBulkUploadCheckResultActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssetBulkUploadCheckResultActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetBulkUploadCheckResultActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'accept': return AssetBulkUploadCheckResultActionEnum.accept;
        case r'reject': return AssetBulkUploadCheckResultActionEnum.reject;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssetBulkUploadCheckResultActionEnumTypeTransformer] instance.
  static AssetBulkUploadCheckResultActionEnumTypeTransformer? _instance;
}



class AssetBulkUploadCheckResultReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const AssetBulkUploadCheckResultReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const duplicate = AssetBulkUploadCheckResultReasonEnum._(r'duplicate');
  static const unsupportedFormat = AssetBulkUploadCheckResultReasonEnum._(r'unsupported-format');

  /// List of all possible values in this [enum][AssetBulkUploadCheckResultReasonEnum].
  static const values = <AssetBulkUploadCheckResultReasonEnum>[
    duplicate,
    unsupportedFormat,
  ];

  static AssetBulkUploadCheckResultReasonEnum? fromJson(dynamic value) => AssetBulkUploadCheckResultReasonEnumTypeTransformer().decode(value);

  static List<AssetBulkUploadCheckResultReasonEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetBulkUploadCheckResultReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetBulkUploadCheckResultReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetBulkUploadCheckResultReasonEnum] to String,
/// and [decode] dynamic data back to [AssetBulkUploadCheckResultReasonEnum].
class AssetBulkUploadCheckResultReasonEnumTypeTransformer {
  factory AssetBulkUploadCheckResultReasonEnumTypeTransformer() => _instance ??= const AssetBulkUploadCheckResultReasonEnumTypeTransformer._();

  const AssetBulkUploadCheckResultReasonEnumTypeTransformer._();

  String encode(AssetBulkUploadCheckResultReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssetBulkUploadCheckResultReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetBulkUploadCheckResultReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'duplicate': return AssetBulkUploadCheckResultReasonEnum.duplicate;
        case r'unsupported-format': return AssetBulkUploadCheckResultReasonEnum.unsupportedFormat;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssetBulkUploadCheckResultReasonEnumTypeTransformer] instance.
  static AssetBulkUploadCheckResultReasonEnumTypeTransformer? _instance;
}


