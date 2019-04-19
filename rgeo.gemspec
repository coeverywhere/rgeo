require "./lib/rgeo/version"

Gem::Specification.new do |spec|
  spec.name = "rgeo"
  spec.summary = "RGeo is a geospatial data library for Ruby."

  spec.description =
    "RGeo is a geospatial data library for Ruby. It provides an implementation " \
    "of the Open Geospatial Consortium's Simple Features Specification, used by " \
    "most standard spatial/geographic data storage systems such as PostGIS. A " \
    "number of add-on modules are also available to help with writing " \
    "location-based applications using Ruby-based frameworks such as Ruby On Rails."

  spec.version = RGeo::VERSION
  spec.author = "Daniel Azuma, Tee Parham"
  spec.email = "dazuma@gmail.com, parhameter@gmail.com"
  spec.homepage = "https://github.com/rgeo/rgeo"
  spec.required_ruby_version = ">= 1.9.3"
  spec.platform = Gem::Platform::RUBY

  spec.files = Dir["lib/**/*", "ext/**/*", "LICENSE.txt"]
  spec.test_files = Dir["test/**/*"]
  spec.extensions = Dir["ext/geos_c_impl/extconf.rb"]

  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rdoc", "~> 4.2"
  spec.add_development_dependency "ffi-geos", "~> 1.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.35"
end
