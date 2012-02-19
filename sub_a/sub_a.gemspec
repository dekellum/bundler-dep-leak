# -*- ruby -*- encoding: utf-8 -*-
require File.expand_path('../lib/sub_a/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Kellum"]
  gem.email         = ["dek-oss@gravitext.com"]
  gem.description   = %q{a gem description}
  gem.summary       = %q{a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "sub_a"
  gem.require_paths = ["lib"]
  gem.version       = SubA::VERSION

  gem.add_development_dependency( 'minitest', '= 2.11.1' )
end
