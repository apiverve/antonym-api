/// Response models for the Antonym Finder API.

/// API Response wrapper.
class AntonymResponse {
  final String status;
  final dynamic error;
  final AntonymData? data;

  AntonymResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AntonymResponse.fromJson(Map<String, dynamic> json) => AntonymResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AntonymData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Antonym Finder API.

class AntonymData {
  String? word;
  List<String>? antonyms;

  AntonymData({
    this.word,
    this.antonyms,
  });

  factory AntonymData.fromJson(Map<String, dynamic> json) => AntonymData(
      word: json['word'],
      antonyms: (json['antonyms'] as List?)?.cast<String>(),
    );
}

class AntonymRequest {
  String word;

  AntonymRequest({
    required this.word,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
    };
}
