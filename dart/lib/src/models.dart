/// Response models for the Antonym Finder API.

/// API Response wrapper.
class AntonymResponse {
  final String status;
  final dynamic error;
  final AntonymData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AntonymResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AntonymResponse.fromJson(Map<String, dynamic> json) => AntonymResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AntonymData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Antonym Finder API.

class AntonymData {
  String? partOfSpeech;
  String? word;
  String? language;
  List<String>? antonyms;

  AntonymData({
    this.partOfSpeech,
    this.word,
    this.language,
    this.antonyms,
  });

  factory AntonymData.fromJson(Map<String, dynamic> json) => AntonymData(
      partOfSpeech: json['partOfSpeech'],
      word: json['word'],
      language: json['language'],
      antonyms: (json['antonyms'] as List?)?.cast<String>(),
    );
}

class AntonymRequest {
  String word;
  String? language;

  AntonymRequest({
    required this.word,
    this.language,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
      if (language != null) 'language': language,
    };
}
