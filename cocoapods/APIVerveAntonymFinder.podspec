Pod::Spec.new do |s|
  s.name             = 'APIVerveAntonymFinder'
  s.version          = '1.2.3'
  s.summary          = 'Antonym Finder is an antonym lookup API that finds words with opposite meanings along with their parts of speech across supported languages.'
  s.description      = <<-'DESC'
Antonym Finder is an antonym lookup API that finds words with opposite meanings along with their parts of speech across supported languages. Pass any term and an optional language code to receive an array of antonyms.

This iOS/macOS SDK provides a convenient way to access the Antonym Finder from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/antonym?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/antonym-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveAntonymFinder/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
