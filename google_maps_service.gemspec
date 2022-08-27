lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "google_maps_service/version"

Gem::Specification.new do |spec|
  spec.name = "google_maps_service"
  spec.version = GoogleMapsService::VERSION
  spec.authors = ["Lang Sharpe"]
  spec.email = ["langer8191@gmail.com"]

  spec.summary = "Ruby gem for Google Maps Web Service APIs "
  spec.homepage = "https://github.com/langsharpe/google-maps-services-ruby"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 2.7.0"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "multi_json", "~> 1.15"
  spec.add_runtime_dependency "retriable", "~> 3.1"
  spec.add_development_dependency "standard", "~> 1.16"
end
