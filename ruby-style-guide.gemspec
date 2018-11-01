lib = File.expand_path("lib", __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby-style-guide/version"

Gem::Specification.new do |gem|
  gem.name    = "ruby-style-guide"
  gem.version = RubyStyleGuide::VERSION

  gem.summary = "Style guide to follow according to README for ruby-style-guide"
  gem.description = "Utilizing Rubocop to define styles laid out in the ruby-style-guide"

  gem.authors  = ["Corinne Kunze"]
  gem.email    = "ckunze@goldstar.com"
  gem.homepage = "https://github.com/goldstar/ruby-style-guide"

  gem.add_development_dependency("rubocop", "~> 0.60.0")
  gem.required_ruby_version = ">= 2.4.5"

  # ensure the gem is built out of versioned files
  gem.files = Dir["Rakefile", "{bin,lib,man,test,spec}/**/*", "README*", "LICENSE*"] & `git ls-files -z`.split("\0")
end
