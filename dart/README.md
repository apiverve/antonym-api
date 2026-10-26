# Antonym Finder API - Dart/Flutter Client

Antonym Finder is an antonym lookup API that finds words with opposite meanings along with their parts of speech across supported languages. Pass any term and an optional language code to receive an array of antonyms.

[![pub package](https://img.shields.io/pub/v/apiverve_antonym.svg)](https://pub.dev/packages/apiverve_antonym)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Antonym Finder API](https://apiverve.com/marketplace/antonym?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_antonym: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_antonym/apiverve_antonym.dart';

void main() async {
  final client = AntonymClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'word': 'happy',
      'language': 'Spanish'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "partOfSpeech": "adjective",
    "word": "happy",
    "language": "en",
    "antonyms": [
      "sad",
      "unhappy",
      "miserable",
      "depressed",
      "glum"
    ]
  }
}
```

## API Reference

- **API Home:** [Antonym Finder API](https://apiverve.com/marketplace/antonym?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/antonym](https://docs.apiverve.com/ref/antonym?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
