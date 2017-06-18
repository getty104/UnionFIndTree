# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'union_find_tree/version'

Gem::Specification.new do |spec|
  spec.name          = "union_find_tree"
  spec.version       = UnionFindTree::VERSION
  spec.authors       = ["getty104"]
  spec.email         = ["hayabusatoshihumi@gmail.com"]

  spec.summary       = %q{ This is a union_find_tree library. }
  spec.description   = %q{ This is a union_find_tree library. It is used for connecting and grouping items. you can connect any object}
  spec.homepage      = "https://github.com/getty104/UnionFindTree"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
