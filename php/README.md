# Antonym Finder API - PHP Package

Antonym is a simple tool for getting the antonyms of a word. It returns a list of antonyms for the given word.

## Installation

Install via Composer:

```bash
composer require apiverve/antonym
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Antonym\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['word' => 'happy']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Antonym\Client;
use APIVerve\Antonym\Exceptions\APIException;
use APIVerve\Antonym\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'happy']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/antonym?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://antonym.apiverve.com?utm_source=php&utm_medium=readme](https://antonym.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
