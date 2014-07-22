# -*- encoding: utf-8 -*-

$:.unshift File.expand_path("../lib", __FILE__)

require 't13n/version'

Gem::Specification.new do |s|
  s.name = "t13n"
  s.version = T13n::VERSION
  s.summary = 'A transliteration tool.'
  s.description = <<-EOS
A transliteration tool to help convert UTF-8 strings between Roman (ascii) characters
and the origin writing system.
  EOS
  s.homepage = 'https://github.com/danrasband/t13n'
  s.authors = ['Daniel Rasband']
  s.email = ['danrasband@gmail.com']
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ['lib']

  s.add_development_dependency 'rake', '~> 10.3', '>= 10.3.2'
end
