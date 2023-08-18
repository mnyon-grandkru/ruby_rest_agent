# frozen_string_literal: true

require_relative "lib/ruby_rest_agent/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_rest_agent"
  spec.version = RubyRestAgent::VERSION
  spec.authors = ["Mark Nyon"]
  spec.email = ["msnyon@hey.com"]

  spec.summary = "A idiosyncratic REST agent"
  spec.description = "A REST Client, fetcher and parser of different domains."
  spec.homepage = "https://github.com/mnyon-grandkru/ruby_rest_agent"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mnyon-grandkru/ruby_rest_agent"
  spec.metadata["changelog_uri"] = "https://github.com/mnyon-grandkru/ruby_rest_agent/blob/main/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop"
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
