# Antonym Finder API - Ruby Gem

Antonym Finder is an antonym lookup API that finds words with opposite meanings along with their parts of speech across supported languages. Pass any term and an optional language code to receive an array of antonyms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_antonym'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_antonym
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_antonym'

# Initialize the client
client = APIVerve::Antonym::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  word: "happy",
  language: "Spanish"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "happy", language: "Spanish" })
  puts response["data"]
rescue APIVerve::Antonym::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Antonym::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Antonym::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/antonym?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/antonym?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/antonym?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
