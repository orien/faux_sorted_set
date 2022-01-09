# frozen_string_literal: true

require_relative "lib/faux_sorted_set/version"

Gem::Specification.new do |spec|
  spec.name = "faux_sorted_set"
  spec.version = FauxSortedSet::VERSION
  spec.authors = ["Orien Madgwick"]
  spec.email = ["_@orien.io"]

  spec.summary = "A fake SortedSet: a set that doesn't sort its elements?!"
  spec.homepage = "https://github.com/orien/#{spec.name}"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").select { |f| f.match(%r{\A(?:exe/|lib/)}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
