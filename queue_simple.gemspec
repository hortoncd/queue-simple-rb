# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'queue_simple/version'

Gem::Specification.new do |spec|
  spec.name          = "queue_simple"
  spec.version       = QueueSimple::VERSION
  spec.authors       = ["Chris Horton"]
  spec.email         = ["hortoncd@gmail.com"]

  spec.summary       = %q{Simple ruby queue implemented on top of linked_list_tail}
  spec.description   = %q{Simple ruby queue implemented on top of linked_list_tail.}
  spec.homepage      = "https://github.com/hortoncd/queue-simple-rb"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "> 1.17"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency 'simplecov', '>= 0.12.0'
end
