# Antonym Finder API - Dart/Flutter Client

Antonym is a simple tool for getting the antonyms of a word. It returns a list of antonyms for the given word.

[![pub package](https://img.shields.io/pub/v/apiverve_antonym.svg)](https://pub.dev/packages/apiverve_antonym)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Antonym Finder API](https://antonym.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_antonym: ^1.1.13
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
      'word': 'happy'
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
    "word": "happy",
    "antonyms": [
      "sad",
      "unhappy",
      "miserable",
      "depressed",
      "gloomy"
    ]
  }
}
```

## API Reference

- **API Home:** [Antonym Finder API](https://antonym.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/antonym](https://docs.apiverve.com/ref/antonym?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
