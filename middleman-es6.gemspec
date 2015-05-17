# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-es6"
  s.version     = "0.1.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vasily Polovnyov"]
  s.email       = ["vasily@polovnyov.ru"]
  s.homepage    = "https://vast.github.io/"
  s.summary     = %q{ES6 Middleman support}
  s.description = %q{Naive ES6 Middleman (Sprockets) support}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("middleman-core", [">= 3.3.12"], ["< 4.0"])
  s.add_runtime_dependency("middleman-sprockets", ["> 3.3"])
  s.add_runtime_dependency("babel-transpiler")
end
