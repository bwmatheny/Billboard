require_relative 'lib/billboard/version'

Gem::Specification.new do |spec|
  spec.name          = "billboard"
  spec.version       = Billboard::VERSION
  spec.authors       = ["bwmatheny"]
  spec.email         = ["bwmatheny@gmail.com"]

  spec.summary       = %q{Gather information from the Billboard weekly top 100!}
  spec.description   = %q{customize the length of the Chart you want to see! 
                         This gem uses the Billboard top 100 to show you the top songs of the week.}
  spec.homepage      = "https://github.com/bwmatheny/Billboard."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bwmatheny/Billboard"
  spec.metadata["changelog_uri"] = "https://github.com/bwmatheny/Billboard"

  Specify which files should be added to the gem when it is released.
  The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
